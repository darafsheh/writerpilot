'use client';

import Button from '@/components/ui/Button';
import LogoCloud from '@/components/ui/LogoCloud';
import type { Tables } from '@/types_db';
import { getStripe } from '@/utils/stripe/client';
import { checkoutWithStripe } from '@/utils/stripe/server';
import { getErrorRedirect } from '@/utils/helpers';
import { User } from '@supabase/supabase-js';
import cn from 'classnames';
import { useRouter, usePathname } from 'next/navigation';
import { useState } from 'react';


type Subscription = Tables<'subscriptions'>;
type Product = Tables<'products'>;
type Price = Tables<'prices'>;
type Entitlement = Tables<'customers'>;

interface ProductWithPrices extends Product {
  prices: Price[];
}
interface PriceWithProduct extends Price {
  products: Product | null;
}
interface SubscriptionWithProduct extends Subscription {
  prices: PriceWithProduct | null;
}
// interface EntitlementsWithFeatures extends Entitlement {
//   access: Entitlement[];
// }

interface Props {
  user: User | null | undefined;
  products: ProductWithPrices[];
  subscription: SubscriptionWithProduct | null;
  entitlements: Entitlement[];
}

// declare global {
//   namespace JSX {
//     interface IntrinsicElements {
//       'stripe-pricing-table': React.DetailedHTMLProps<React.HTMLAttributes<HTMLElement>, HTMLElement>;
//     }
//   }
// }


type BillingInterval = 'lifetime' | 'year' | 'month';




import { RadioGroup } from '@headlessui/react'
import { CheckIcon } from '@heroicons/react/20/solid'

const frequencies = [
  { value: 'monthly', label: 'Monthly', priceSuffix: '/month' },
  { value: 'annually', label: 'Annually', priceSuffix: '/year' },
]
const tiers = [
  {
    name: 'Freelancer',
    id: 'tier-freelancer',
    href: '#',
    price: { monthly: '$15', annually: '$144' },
    description: 'The essentials to provide your best work for clients.',
    features: ['5 products', 'Up to 1,000 subscribers', 'Basic analytics', '48-hour support response time'],
    mostPopular: false,
  },
  {
    name: 'Startup',
    id: 'tier-startup',
    href: '#',
    price: { monthly: '$30', annually: '$288' },
    description: 'A plan that scales with your rapidly growing business.',
    features: [
      '25 products',
      'Up to 10,000 subscribers',
      'Advanced analytics',
      '24-hour support response time',
      'Marketing automations',
    ],
    mostPopular: true,
  },
  {
    name: 'Enterprise',
    id: 'tier-enterprise',
    href: '#',
    price: { monthly: '$48', annually: '$576' },
    description: 'Dedicated support and infrastructure for your company.',
    features: [
      'Unlimited products',
      'Unlimited subscribers',
      'Advanced analytics',
      '1-hour, dedicated support response time',
      'Marketing automations',
      'Custom reporting tools',
    ],
    mostPopular: false,
  },
]





export default function Pricing({ user, products, subscription, entitlements }: Props) {
  const intervals = Array.from(
    new Set(
      products.flatMap((product) =>
        product?.prices?.map((price) => price?.interval)
      )
    )
  );

  const [frequency, setFrequency] = useState(frequencies[0])

  // const features = Array.from (
  //   new Set(
  //     entitlements.flatMap((features2) =>
  //       features2?.map((feature) => feature.access)
  //     )
  //   )
  // );
  if(!entitlements) {
    entitlements = [];
  }

  const router = useRouter();
  const [billingInterval, setBillingInterval] =
    useState<BillingInterval>('month');
  const [priceIdLoading, setPriceIdLoading] = useState<string>();
  const currentPath = usePathname();

  const handleStripeCheckout = async (price: Price) => {
    setPriceIdLoading(price.id);

    if (!user) {
      setPriceIdLoading(undefined);
      return router.push('/signin/signup');
    }

    const { errorRedirect, sessionId } = await checkoutWithStripe(
      price,
      currentPath
    );

    if (errorRedirect) {
      setPriceIdLoading(undefined);
      return router.push(errorRedirect);
    }

    if (!sessionId) {
      setPriceIdLoading(undefined);
      return router.push(
        getErrorRedirect(
          currentPath,
          'An unknown error occurred.',
          'Please try again later or contact a system administrator.'
        )
      );
    }

    const stripe = await getStripe();
    stripe?.redirectToCheckout({ sessionId });

    setPriceIdLoading(undefined);
  };

  console.log(entitlements.length)
  if (entitlements.length > 0) {
    console.log(entitlements.length)
    entitlements?.map((access2) => {
      console.log(access2?.access.length);
      console.log("herrrrr")
      access2?.access.map((feature) => {
        console.log(feature.lookup_key);
        if (feature.lookup_key == "editor"){
          console.log("I AM IN NEO!");
        }
        return (
          <section className="bg-white">
            <div>{
            feature?.lookup_key
            }</div>
          </section>
        )
      })
    })
  }

  if (!products.length) {
    return (
      <section className="bg-black">
        <div className="max-w-6xl px-4 py-8 mx-auto sm:py-24 sm:px-6 lg:px-8">
          <div className="sm:flex sm:flex-col sm:align-center"></div>
          <p className="text-4xl font-extrabold text-white sm:text-center sm:text-6xl">
            No subscription pricing plans found. Create them in your{' '}
            <a
              className="text-pink-500 underline"
              href="https://dashboard.stripe.com/products"
              rel="noopener noreferrer"
              target="_blank"
            >
              Stripe Dashboard
            </a>
            .
          </p>
        </div>
      </section>
    );
  } else {
    return (
      <div>
        {user?.email == null && 
          (
            <div className="relative isolate overflow-hidden bg-gray-900">
              <svg
                className="absolute inset-0 -z-10 h-full w-full stroke-white/10 [mask-image:radial-gradient(100%_100%_at_top_right,white,transparent)]"
                aria-hidden="true"
              >
                <defs>
                  <pattern
                    id="983e3e4c-de6d-4c3f-8d64-b9761d1534cc"
                    width={200}
                    height={200}
                    x="50%"
                    y={-1}
                    patternUnits="userSpaceOnUse"
                  >
                    <path d="M.5 200V.5H200" fill="none" />
                  </pattern>
                </defs>
                <svg x="50%" y={-1} className="overflow-visible fill-gray-800/20">
                  <path
                    d="M-200 0h201v201h-201Z M600 0h201v201h-201Z M-400 600h201v201h-201Z M200 800h201v201h-201Z"
                    strokeWidth={0}
                  />
                </svg>
                <rect width="100%" height="100%" strokeWidth={0} fill="url(#983e3e4c-de6d-4c3f-8d64-b9761d1534cc)" />
              </svg>
              <div
                className="absolute left-[calc(50%-4rem)] top-10 -z-10 transform-gpu blur-3xl sm:left-[calc(50%-18rem)] lg:left-48 lg:top-[calc(50%-30rem)] xl:left-[calc(50%-24rem)]"
                aria-hidden="true"
              >
                <div
                  className="aspect-[1108/632] w-[69.25rem] bg-gradient-to-r from-[#80caff] to-[#4f46e5] opacity-20"
                  style={{
                    clipPath:
                      'polygon(73.6% 51.7%, 91.7% 11.8%, 100% 46.4%, 97.4% 82.2%, 92.5% 84.9%, 75.7% 64%, 55.3% 47.5%, 46.5% 49.4%, 45% 62.9%, 50.3% 87.2%, 21.3% 64.1%, 0.1% 100%, 5.4% 51.1%, 21.4% 63.9%, 58.9% 0.2%, 73.6% 51.7%)',
                  }}
                />
              </div>
              <div className="mx-auto max-w-7xl px-6 pb-24 pt-10 sm:pb-32 lg:flex lg:px-8 lg:py-20">
                <div className="mx-auto max-w-2xl flex-shrink-0 lg:mx-0 lg:max-w-xl lg:pt-8">
                  <div className="mt-0 sm:mt-0 lg:mt-0">
                    <span className="inline-flex space-x-6">
                      <span className="rounded-full bg-indigo-500/10 px-3 py-1 text-sm font-semibold leading-6 text-indigo-400 ring-1 ring-inset ring-indigo-500/20">
                        What's new
                      </span>
                      <span className="inline-flex items-center space-x-2 text-sm font-medium leading-6 text-gray-300">
                        <span>Just shipped v1.0</span>
                        
                      </span>
                    </span>
                  </div>
                  <h1 className="mt-10 text-4xl font-bold tracking-tight text-white sm:text-6xl">
                    Write and publish faster
                  </h1>
                  <p className="mt-6 text-lg leading-8 text-gray-300">
                    An AI tool to help you write faster and repurpose your content to publish in different channels.
                  </p>
                  <div className="mt-10 flex items-center gap-x-6">
                    <a
                      href="/signin/signup"
                      className="rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-400"
                    >
                      Get started
                    </a>
                  </div>
                </div>
                <div className="mx-auto mt-16 flex max-w-2xl sm:mt-24 lg:ml-10 lg:mr-0 lg:mt-0 lg:max-w-none lg:flex-none xl:ml-32">
                  <div className="max-w-3xl flex-none sm:max-w-5xl lg:max-w-none">
                    
                  </div>
                </div>
              </div>
            </div>
          )
        }
        <section className="bg-black">
          <div className="max-w-6xl px-4 py-8 mx-auto sm:py-24 sm:px-6 lg:px-8">
            <div className="sm:flex sm:flex-col sm:align-center">
              <h1 className="text-4xl font-extrabold text-white sm:text-center sm:text-6xl">
                Pricing Plans
              </h1>
              <p className="max-w-2xl m-auto mt-5 text-xl text-zinc-200 sm:text-center sm:text-2xl">
                Start writing for free. Premium plan unlock additional features.
              </p>
              <div className="relative self-center mt-6 bg-zinc-900 rounded-lg p-0.5 flex sm:mt-8 border border-zinc-800">
                {intervals.includes('month') && (
                  <button
                    onClick={() => setBillingInterval('month')}
                    type="button"
                    className={`${
                      billingInterval === 'month'
                        ? 'relative w-1/2 bg-zinc-700 border-zinc-800 shadow-sm text-white'
                        : 'ml-0.5 relative w-1/2 border border-transparent text-zinc-400'
                    } rounded-md m-1 py-2 text-sm font-medium whitespace-nowrap focus:outline-none focus:ring-2 focus:ring-pink-500 focus:ring-opacity-50 focus:z-10 sm:w-auto sm:px-8`}
                  >
                    Monthly
                  </button>
                )}
                {intervals.includes('year') && (
                  <button
                    onClick={() => setBillingInterval('year')}
                    type="button"
                    className={`${
                      billingInterval === 'year'
                        ? 'relative w-1/2 bg-zinc-700 border-zinc-800 shadow-sm text-white'
                        : 'ml-0.5 relative w-1/2 border border-transparent text-zinc-400'
                    } rounded-md m-1 py-2 text-sm font-medium whitespace-nowrap focus:outline-none focus:ring-2 focus:ring-pink-500 focus:ring-opacity-50 focus:z-10 sm:w-auto sm:px-8`}
                  >
                    Yearly billing
                  </button>
                )}
              </div>
            </div>

            
            <div className="mt-12 space-y-4 sm:mt-16 sm:space-y-0 flex flex-wrap justify-center gap-6 lg:max-w-4xl lg:mx-auto xl:max-w-none xl:mx-0">
              {products.map((product) => {
                const price = product?.prices?.find(
                  (price) => price.interval === billingInterval
                );
                if (!price) return null;
                const priceString = new Intl.NumberFormat('en-US', {
                  style: 'currency',
                  currency: price.currency!,
                  minimumFractionDigits: 0
                }).format((price?.unit_amount || 0) / 100);
                return (
                  <div
                    key={product.id}
                    className={cn(
                      'flex flex-col rounded-lg shadow-sm divide-y divide-zinc-600 bg-zinc-900',
                      {
                        'bg-white/5 ring-2 ring-indigo-500': subscription
                          ? product.name === subscription?.prices?.products?.name
                          : product.name === 'Freelancer'
                      },
                      'flex-1', // This makes the flex item grow to fill the space
                      'basis-1/3', // Assuming you want each card to take up roughly a third of the container's width
                      'max-w-xs' // Sets a maximum width to the cards to prevent them from getting too large
                    )}
                  >
                    <div className="p-6">
                      <h2 className="text-2xl font-semibold leading-6 text-white">
                        {product.name}
                      </h2>
                      <p className="mt-4 text-zinc-300">{product.description}</p>
                      <p className="mt-8">
                        <span className="text-5xl font-extrabold white">
                          {priceString}
                        </span>
                        <span className="text-base font-medium text-zinc-100">
                          /{billingInterval}
                        </span>
                      </p>
                      <Button
                        variant="slim"
                        type="button"
                        loading={priceIdLoading === price.id}
                        onClick={() => handleStripeCheckout(price)}
                        className="block w-full py-2 mt-8 text-sm font-semibold text-center text-white rounded-md hover:bg-indigo-400 focus-visible:outline-indigo-500"
                      >
                        {subscription ? 'Select Plan' : 'Sign Up'}
                      </Button>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        </section>
      </div>
    );
  }
}

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
import { Fragment, useState } from 'react';

import { Listbox, Transition } from '@headlessui/react'
import { CalendarIcon, PaperClipIcon, TagIcon, UserCircleIcon } from '@heroicons/react/20/solid'

const assignees = [
  { name: 'Unassigned', value: null },
  {
    name: 'Wade Cooper',
    value: 'wade-cooper',
    avatar:
      'https://images.unsplash.com/photo-1491528323818-fdd1faba62cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
  },
  // More items...
]
const labels = [
  { name: 'Unlabelled', value: null },
  { name: 'Engineering', value: 'engineering' },
  // More items...
]
const dueDates = [
  { name: 'No due date', value: null },
  { name: 'Today', value: 'today' },
  // More items...
]


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





export default function Editor({ user, products, subscription, entitlements }: Props) {
  const intervals = Array.from(
    new Set(
      products.flatMap((product) =>
        product?.prices?.map((price) => price?.interval)
      )
    )
  );

  const [assigned, setAssigned] = useState(assignees[0])
  const [labelled, setLabelled] = useState(labels[0])
  const [dated, setDated] = useState(dueDates[0])

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

    return (
      <div>
        <section className="bg-black">
          <div className="max-w-6xl px-4 py-8 mx-auto sm:py-24 sm:px-6 lg:px-8">
            <div className="sm:flex sm:flex-col sm:align-center">
              <div className="text-4xl font-extrabold text-white sm:text-center sm:text-6xl">
                <div className="mb-5">AI Editor</div>
                {/* {entitlements?.length} */}
                {/* {entitlements[0]?.access?.length} */}
                {
                  entitlements[0]?.access.map((feature) => {
                    return(
                      <div className='flex'>
                        {/* {feature?.lookup_key} */}
                        {feature?.lookup_key == "editor" && 
                            (
                                <div className='flex-grow'>
                                    <form action="#" className="relative bg-gray-800">
                                        <div className="overflow-hidden rounded-lg border border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-1 focus-within:ring-indigo-500">
                                        
                                            <textarea
                                            rows={10}
                                            name="title"
                                            id="title"
                                            className="h-52 pl-5 block bg-gray-800 w-full border-0 pt-2.5 text-lg font-medium placeholder:text-gray-600 focus:ring-0 text-gray-200"
                                            placeholder="Write a your content here..."
                                            />

                                            {/* Spacer element to match the height of the toolbar */}
                                            <div aria-hidden="true">
                                            <div className="py-2">
                                                <div className="h-9" />
                                            </div>
                                            <div className="h-px" />
                                            <div className="py-2">
                                                <div className="py-px">
                                                <div className="h-9" />
                                                </div>
                                            </div>
                                            </div>
                                        </div>

                                        <div className="absolute inset-x-px bottom-0">
                                           
                                            <div className="flex items-center justify-between space-x-3 border-t border-gray-200 px-2 py-2 sm:px-3">
                                            <div className="flex">
                                                <button
                                                type="button"
                                                className="group -my-2 -ml-2 inline-flex items-center rounded-full px-3 py-2 text-left text-gray-400"
                                                >
                                                <PaperClipIcon className="-ml-1 mr-2 h-5 w-5 group-hover:text-gray-500" aria-hidden="true" />
                                                <span className="text-sm italic text-gray-500 group-hover:text-gray-600">Attach a file</span>
                                                </button>
                                            </div>
                                            <div className="flex-shrink-0">
                                                <button
                                                type="submit"
                                                className="inline-flex items-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                                                >
                                                Save
                                                </button>
                                            </div>
                                            </div>
                                        </div>
                                        </form>
                                </div>
                            )
                        }
                        {feature?.lookup_key == "premium" && 
                            (
                                <div className='flex ml-5 w-40 text-left p-5 border-gray-300 bg-indigo-800 overflow-hidden rounded-lg border border-gray-300 shadow-sm focus-within:border-indigo-500 focus-within:ring-1 focus-within:ring-indigo-500'>
                                    <span className='block w-full border-0 pt-2.5 text-lg font-medium placeholder:text-gray-600 focus:ring-0 text-gray-200'>
                                        You have access to premium features!
                                    </span>
                                </div>
                            )
                        }
                      </div>
                    )
                  })
                }
              </div>
            </div>

          </div>
        </section>
      </div>
    );
}

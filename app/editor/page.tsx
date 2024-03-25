import Editor from '@/components/ui/Editor/Editor';
import { createClient } from '@/utils/supabase/server';

export default async function PricingPage() {
  const supabase = createClient();

  const {
    data: { user }
  } = await supabase.auth.getUser();

  const { data: subscription, error } = await supabase
    .from('subscriptions')
    .select('*, prices(*, products(*))')
    .in('status', ['trialing', 'active'])
    .maybeSingle();

  if (error) {
    console.log(error);
  }

  const { data: products } = await supabase
    .from('products')
    .select('*, prices(*)')
    .eq('active', true)
    .eq('prices.active', true)
    .order('metadata->index')
    .order('unit_amount', { referencedTable: 'prices' });

  const { data: entitlements } = await supabase
    .from('customers')
    .select();

    console.log(entitlements);

  return (
    <Editor
      user={user}
      products={products ?? []}
      subscription={subscription}
      entitlements={entitlements ?? []}
    />
  );
}

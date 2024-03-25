import Link from 'next/link';

import Logo from '@/components/icons/Logo';
import GitHub from '@/components/icons/GitHub';

export default function Footer() {
  return (
    <footer className="mx-auto max-w-[1920px] px-6 bg-zinc-900">
      <div className="flex flex-col items-center justify-between py-12 space-y-4 md:flex-row bg-zinc-900">
        <div>
          <span>
            &copy; {new Date().getFullYear()} WriterPilot, Inc. All rights reserved.
          </span>
        </div>
        <div className="flex items-center">
          <span className="text-white">Created by @shar</span>
        </div>
      </div>
    </footer>
  );
}

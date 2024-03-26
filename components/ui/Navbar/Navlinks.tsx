'use client';

import Link from 'next/link';
import { SignOut } from '@/utils/auth-helpers/server';
import { handleRequest } from '@/utils/auth-helpers/client';
import Logo from '@/components/icons/Logo';
import { usePathname, useRouter } from 'next/navigation';
import { getRedirectMethod } from '@/utils/auth-helpers/settings';
import s from './Navbar.module.css';

interface NavlinksProps {
  user?: any;
}

export default function Navlinks({ user }: NavlinksProps) {
  const router = getRedirectMethod() === 'client' ? useRouter() : null;

  return (
    <div className="relative flex flex-row justify-between py-4 align-center md:py-6">
      <div className="flex items-center flex-1">
        <Link href="/" className={s.logo} aria-label="Logo">
          <Logo />
        </Link>
          <Link href="/" className="ml-6 font-b">WriterAI</Link>
          {user && (
            <nav className="ml-6 space-x-2 lg:block">
              <Link href="/editor" className={s.link}>
                Editor
              </Link>
              <Link href="/" className={s.link}>
                Plans
              </Link>
            </nav>
          )}
      </div>
      <div className="flex justify-end space-x-8">
        {user ? (
          <span className="inline-flex space-x-6">
            <span className="rounded-full bg-indigo-500/10 px-3 py-1 text-sm font-semibold leading-6 text-indigo-300 ring-1 ring-inset ring-indigo-500/20">
              <span className='text-gray-600 font-normal'>logged in as </span>{user?.email}
            </span>
            <span className="inline-flex items-center space-x-2 text-sm font-medium leading-6 text-gray-300">
              <form onSubmit={(e) => handleRequest(e, SignOut, router)}>
                <input type="hidden" name="pathName" value={usePathname()} />
                <button type="submit" className={s.link}>
                  Sign out
                </button>
              </form>
            </span>
          </span>
        ) : (
          <Link href="/signin" className={s.link}>
            Sign In
          </Link>
        )}
      </div>
    </div>
  );
}

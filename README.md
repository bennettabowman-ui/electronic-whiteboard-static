# Electronic Whiteboard

Static Supabase-backed Electronic Whiteboard. Deploy on Vercel as a static site from the repository root.

## Broker layout profiles

The app uses the broker name/initials prompt as a simple profile key. Each broker gets one default saved layout containing the selected product, pinned pipe rows, and strip column order.

Before deploying profiles, run the SQL in `supabase-layout-profiles.sql` in the Supabase SQL editor.

## Vercel settings

- Framework Preset: Other
- Build Command: leave blank
- Output Directory: leave blank or `.`
- Root Directory: repository root

## Maintenance

This repository is configured for SSH deploy-key pushes from the local Codex workspace.

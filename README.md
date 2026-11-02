# Heewon Cho — Resume

Typst로 작성하고 Solid + Vite로 제공하는 이력서입니다. Cloudflare Pages에서는 루트 요청을 `resume.pdf`로 내부 rewrite하므로 `resume.pribe.ss` 주소에서 PDF가 바로 열립니다. Wrangler는 사용하지 않습니다.

## 로컬 실행

```bash
bun install
bun run resume
bun run dev
```

브라우저에서 <http://localhost:4173>을 엽니다.

## 이력서 수정

원본은 `main.typ`이며 Inter와 Ioskeley Mono를 사용합니다.

```bash
bun run resume
```

이 명령은 다음 파일을 갱신합니다.

- `main.pdf`: 로컬 확인용 PDF
- `public/resume.pdf`: Cloudflare Pages 배포용 PDF

## 프로덕션 빌드

```bash
bun run build
bun run preview
```

## Cloudflare Pages 배포

GitHub 저장소를 Cloudflare Pages에 연결하고 다음 값을 사용합니다.

| 항목 | 값 |
| --- | --- |
| Framework preset | `Vite` |
| Build command | `bun run build` |
| Build output directory | `dist` |
| Root directory | 비워 둠 |

`public/_redirects`가 `/`를 `/resume.pdf`로 내부 rewrite하며, `public/_headers`가 PDF를 브라우저에서 inline으로 표시합니다.

첫 배포 후 **Workers & Pages → 프로젝트 → Custom domains → Set up a custom domain**에서 `resume.pribe.ss`를 등록합니다. `pribe.ss`가 같은 Cloudflare 계정에 연결되어 있다면 필요한 DNS 레코드는 자동으로 생성됩니다.

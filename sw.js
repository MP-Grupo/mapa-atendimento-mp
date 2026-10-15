/* Painel M&P: service worker mínimo. Não guarda nada em cache: sempre busca a versão mais nova. */
self.addEventListener("install", function(){ self.skipWaiting(); });
self.addEventListener("activate", function(e){ e.waitUntil(self.clients.claim()); });
self.addEventListener("fetch", function(){});

module "service-token" {
  source = "../../../modules/sealed-secrets"

  sealedSecrets = var.namespace != "production" ? null : {
    "github-token" : {
      isClusterWide = false

      reflected           = true
      reflectedNamespaces = ["production", "staging", "previews", "sandbox"]

      encryptedData = {
        "GITHUB_TOKEN" : "AgCUfMzi9vCyiQtCPsy8kt7DYJC4IfeEQH4AkPIy4NyDbRWYoN6atRXhflDD3bmFJjw8TS+UVmjuAbEcwWXNae496P2TwoTx0z51FISOKvGMibIjdsleiOb0lA50c4hibscXyLspAdW80nhPD5GT2+TLvUntaPReEmuvxVIRg/q6LDWeO8wpVFZD5rlFarFX2D+/vWBwH5ZzBoAFQk3GNpy9+wXFrDNXJtBFp7b3u5oKm5aiba2WpiRKIEZuXeiMmj5+VVl8AVKKy89d6+aCPTePfjoRc1uwH+Uz4LrTWZaOxGN89oYrtSB8M1xnDldomzYcVqXW+iNzhTcXClQaB3MUuQaHS3yfFqMJ6iX32IAt2vN8MUYe+8HBRLcBzdq12MgVBGjzfUWMIzoHfQK1diTxE6fZTVizV0QzVf1gw+/YpGHFn1Yc4phdff+c1+HbUSj8tfvU+JOiijBlOdxgGJPbQ4XAimvD4dofnL8lFo2h4zajkPJDyl2y4xzJ3HI+f0IiSBLnuTx3nmYCICGqFRs3kVIixq4lzqbzvWx9t222TtOKPlRHOfyp+BHMWwf/Ll7Q747df86HzYFWt4RCDvAiRw5gZvU/eNvGf5bR0P/sIKpDeXjch7N2IRPqCYttf/35Foz7Bqy/WOECJjSGjpsBFhtucvEyV9nQuAO3b9QFF0E3o4J/QvAfvbFYeBJ2rPiOvgyIGyV01fUSH95yftG3hVFNOIOqZO3XWCYrwwycL4QmvdwAYJez"
      }
    }

    "discord-token" : {
      isClusterWide = false

      reflected           = true
      reflectedNamespaces = ["production", "staging", "previews", "sandbox"]

      encryptedData = {
        "DISCORD_TOKEN" : "AgCNVGBZq8iVZeKef6QaXrGHDPsb3e8BmH7moy6iewrWlXmgidx4gYK9QDk11vKzh3DfOaJAPpqAQPOScUF/eUBeK29nl5Z4JP9RhII4IGNEauxJMtnMKp9PQx6ht9Bf/alB6VNL3K8BkT+PSjC1EzoQyj9OMCrZEerXDYF3+Zl4F4KM9gE43u8uPbGhoayAR4rPbccRh3DcVSckPrkGRVp+DoxuNejMou3fx6g6w7qUJYHh61kCVgA2EsOjceEP+UJGqbtfzgHeJCpCaU/bLGGviDXmIDF1M3zQkUT3lPP+s3Fu3W+hbVdd5bJEkNbxtSprZPL0iS/Tjlm76tY0ShjqerIMuNZvnMxemTKPXpuoTNaEDE15ed06Ww8w5hynyYLmmL9rZt1Vjgyo+IqtUjQOX+H6zVyhNkTNOD1syG+zQA9ShUTSOYRCLI8BREerr/00cL0B2wazT+W0wazZdfuRRzZL+/fMxrvRLldWXlubXh05QwH7PxfT0F46CLAacL/zAaque2nZQPOGZkS6F+LEcy3fz6NN6o/kJwCyWBxulnLnAj7NAX8spgcL3wrb2HbjxnZDHdt/D0gI6zIxEgzZ/M7/gfcMX+Ey49Uhl7+j16IWcVFzk4wEP5jiVzKaV6nLvVi1gkORTJ/b9ise2BNPhb70Y0hNEx+7AEuFkVICf+tid4Av1zq1iThc5lryZSO6+wbba5IWxTxJSbRFGD00TIMCwXpkUbz8/NkeH5cTKjHE7gT6s3AzsTF+cm23s6IyUmSu6bJby2S7l/0evM9d5s3YHJIB"
      }
    }

    "s42-service-token" : {
      isClusterWide = false
      namespace     = "production"
      secretType    = "Opaque"

      reflected           = true
      reflectedNamespaces = ["staging", "previews", "sandbox"]

      encryptedData = {
        "TOKEN" = "AgAlVdqq8lH5K32i8MkN04M/rG1YkgDU0zcDGgJjHd/o8OfuYhCNRbUvi/xN5jbSL39k5tJVWMuGW0SV+nvM5KyGAProoHkLL1ltnV9lcvSxhfxY5N8TbKLZmn9iWIpMayucYPUHUi2zyv+D8D9IR2GzgtbZLa/f0OKqLwkebxnd4rCMwOVwn6ZV1SFUnwOnYMSs8X8vISWK8YD2qmE+lo/CNbixoW9qw1t4PbqMiV6ZJsbA+xr5niqAEgEhFLEsZC0VHmvRJulfkJg99+OTKzUcSJ1saMdCi95pyU54pnAOvHbApxfZigxrXC1UE+MoxShnuIzRErcsvo5+FUPZkubKshBha+OwAKjCF3jUsdmkG30V0cWswVSoxejTf5WVOw75C7Kas+HddJaq4JLqT8KZyWKNvkiDTTvOO5QL7jm26a0zGvJ6sR/4py3TdcrF7XCdGv3ysRRdcQ2Kk0e2z2Gn3ZA/67m9RDLU1CyGxEZcU7LTEYQQyGI+GkWQNjqka//AdM+i1J5f68hSIzrrKna/GGOlRCYVmfwVypDOKIc8x5bZf087+36cvqMuiVqPaoyRBhA0jjHOEiq9gI7S0QRhTA1fbT5ddQdnYW+zcXvcMzQ4H2XGPszXzmUh6hD4g4UAcweWEjKRulebG1IIgYbiZ9tJGwmwUEObWX1QZ4r9BxZCzwE/x+o/pNe6K2Mi+i+uOfBq6sEzGlULo4uFvrGrtP/0ZBTLP+hAvTXl1ETMGxnA/fYJokrkyrDkh4Udy64Bgge3004wHA=="
      }
    }

    "sentry-dsns" : {
      isClusterWide = false
      namespace     = "production"
      secretType    = "Opaque"

      reflected           = true
      reflectedNamespaces = ["staging", "previews", "sandbox"]

      encryptedData = {
        "API_DSN"                = "AgAStueGmlJyOVjLoIT2ofvxgnNr7iSVtITZl27fv/sw31w0MhDluB8O8j2OBi2PDr4sAn+VwKMQqGnIiQiVVaRpp0um2p5VcTSIk/XRvc0LarLsl/ktkrB/RYxO+VQ97m+pHr5H1+IqoqudKA214bQ/KpYuAEYs4n8fjKt6uTXZB9Aj64LJOBO/DLC50ig+0JSoPWY/P9uqHiFmNGBWuXePdffICR0TqZgJn01LEk763ezHoMTAOqhDo4rZI21mYXxjIgjw/nEsVDO13xQdw+ROqsmKDTRZgpioVfoVO6i7c2HcFL7W2lxg4ZD7lVM50kUDdqjL1z+qghDADIxK0zsyVU5TpEbTz5bfBmYdhCWHNyCZih6sZIYtzoMWFNb21UDCipwsOxu+b2JlFk+ODwL5xSKcyhN7SoY61Pkb+1f2Io2u1YMU4Mn2yS38YDsplyhWDZZMCD4gAcxn6EFj8E1ehjZXjuhbc6MEM9clybaWsSd3Y7HHNBKV2A6B5QhKjyhXzfrUSZ4qXmuSGwjFM9P4FFYV90hT3UoMht84aKpqrxQZK5salfJ/HAiUUMRzWknkFXMN9tl0ZbDGFsgD82QDFJ+IjgdDjTK9HSrZaJkrbBs2E6+QEPfkH7sLrpx41r2JF6dJq/7qoRExCefVPABUJuSprmg68Ubg3JCT4QtrWsvQHah9meH3hczR9xjVus02Z/bCFrT3ogaJiVBGQGuWRuv6N0l7LWDMxN7i8hyqJ78mLXZE6Qs1w2wBP3Bai7fVzLdbKrcTSiPLRgrZ/DFKmb4yG8KmC5Op"
        "INTERFACE_DSN"          = "AgCT0mChafJcN917V94P3jrJfx3DJ65V/Xf1IwU/6XEvJLQBP3lgBvtHSF8VYPlfLS7angbVxWlEJd+vejzRfoMMHM6s2CN7qVkZK7tO4EQQ6D/g7g0v7JzlKBQQMtRvsbvTUeUdab5ZYQmVWCu+62pTJTiq38jqq3tdhN2GS1a7IRWtYTUN6R833E4Cnc2MrcCCGpRktN8zR7ZZ8ZYYmipOGoYxXetc6bW+LMzcBOkifL6vAPN4EqV42qUzZFMAt7pw/r5/pNR9eITu7jfnF3QeBaUZh+7Qy6swcVyfFsXg0ilLHSj8DDOtvEQvoVjhZia6uVGVjRquJwKzljMutKhqjTL4Ct2llohJelGQGKkqldJq0L0402PEKEydyJZtPKbJDUTPxq7N4OP0GOoEQNgo6hTR8Kdc3zKZIqRtqt0kPaWuNGu8E2/+kVB0UqVkCDKvsqDztyFsyWrEylISUpaIoaafHAnsxX4eF8SU71LPzHfovfE4KQzK6VuyiVHWh6ApRJ44cMcTMxPeY26qYzyanelupF/pad5kX+9tRTbdi8lW1JpYYz/lU2HfR43PynwJzImQ/m9UT5Qpmc7MkcwPHTk1ymDhbJA7mZ5eKtuGE4mcn8Xrg22NYBo5a//eeiz3vKt+IVMsgKkNIwExg/QWESAeVE5ItHFZvPyedjYfjESuVx145uuNTDMNR1GG+K22p+Oay5OCMzYj7AJpW9z9vC+ALh1bQYwkHA2ajcsexi4FALaTCYyl4E7b0dbd+ax4SSHLyjVOXYtYot2S0CIeKS/EHotlumob"
        "JWTKS_SERVICE_DSN"      = "AgBmjxjsYzqckBkIrCOvdpBXzfSzafJepqKCJ27N1Gi9a8xzFFFJYco2VLq9YqzezPRUp6LoHbVCdCr44IxC4vDehWpHs/8B9cy9e9o1o3IBWx1lCSKULB5Dobc4jvZc0ioKj01CnRMYkAM69a0TP6QIgM2wMRF+yPrc56ct1k3krgVoTIep7PYr0c5O2QhDiO21VkeSHD1R1b8A4dnI9h7xPCShIvbmQFLapna05NsrwRrHiD6tRnAPcRugcnksrjkJj/TH8ZSRe77//hyLALFbJx0APTlbURqbMf+o44k+6amYkTJZDLYoZOuoK/gz1Ic1rqRhgIRCGHf2uK1TNovrpGJsBqvAZ53/wj5MBnT6XqT17dvQppXglfaaemqBiWC76McPiqKHRTb+nHXLm106eTVW9Y3/5hwV350gu3V3rKUn/pHMpIJ4AN9IOEJNlXot1IhQ55fB2vOIYMem2xeECSWZ+rwtaqATpjPtM0F96ODa3/ARZ0blSt36Z6sXp4QHK2uWwToTPNUQgTetPXQEZE7Oa5ze7y+Tj5xWF1V17n2EYJ6Hdd3lk0IJ97PbwTWAMugxe1CXwjQmNHBZZf3FUVyTaJwA5CCjXd7XU42MBFDPAOG449cZyTY78cOjESSWRSvuFP6Hu3hNeZmKRiQUUmNAiO9QHJcQoZit2vA7CFct2N4qjuVzJJTuuvF119nzxNZAXnkGQweWG8/HqGBhF4SBF6Og6y1fyj8KGGJj2VtWmB62NxiIqaVX7/c65pFzen97gaEf66/1YRT+1rm+oHvcliSxB4GN"
        "WEBHOOKS_PROCESSOR_DSN" = "AgCTNFKxePhsbvlVWcKp+jj0YTJWVwTBkpnPTwEwI/4mL3Q6fi4bwwYneU+zvvk3jNHmg3+N72dk0+A+n1b5Av5fcjCS2Ccsc1T99/Bl6aMLYigcQsRgjX+PKNPt0YhL7mB2nfofZb64LMgufg8l+osIge9XkZwORDuZEiTFCDEU1mDDqzo1VnA4SERMKV+tM/S7mW7GtTesh+AcotLPPUHbHBYIyKyZ8OStvKd+0tkNT/9cpZYCfW1Q+IPqQDZSkrZiK2P6FZzFBNmpYbH04eYGjFzRHzPLHs7B4l7yk6MF1lI9qVurBT2DqxmOhCFHtV0IF1gJam8ICy0+8H9xt8EWrUlpR2+vtfewXW5bllqLKGFFJkHSmYgoHFnfAkS6KoZFVXs74/vv5zFuC6pW7qqkk+Ei7HSwHzuvLKKQOSzkwExpwseLqRU77FyAYq4wBe80I7QGNZ0pzf9TEUoi6YkBravmQqNA5X1y6ycW/qq10idJ3SAK0za32FgWx4SF2TytqbYRdeBoGzAnu6VOk6juLbAEl7pmzpEel6OeSI3anrwTYzyP0M3RJ7+j7PQTXSnf/OFSrmblynHVS83HUwbyMpkJSIh3QiVTbe5Z+CgNBMwlVsIVu2MUvFWdy/5fNc9ZyDyC0KE95MKcPYErsXIhe94w+W/kuZrMJ4+JvQPocEOow7ccffK05sj1QyJiY3QNuXV/aHYocTGkEScRJ24CMvXb8o+TaL2Yy2Rv3+VarDK5EtCYUeg0yyqXo9LAPJkp+GDMHKpnc0b8mnpYSvjv2LURvk/Qqp7D"
      }
    }

    "oauth2-providers" : {
      isClusterWide = false
      namespace     = "production"

      # TODO(@42Atomys): Scope the providers to the namespace.
      reflected           = true
      reflectedNamespaces = ["staging", "previews", "sandbox"]

      encryptedData = {
        "DISCORD_ID"       = "AgBWxCUvhWaPxN3ACvO2dRGoppBkc1av284R86ygoZYVQ0dELWZ2BH4XqjnVeMdM7TDFEoZU7A3RbB9NGIUNjSg+meXKNupbabceOu6fbLg9sZrooZrxa2kLLWpSzsJ3OVEWsYkK6RnOAl0ewTU3LUOePHIxPEdOSfbdETD7J3JtlI2HsFls92nqEuXdD8GZuRZNHsHmqgIft9rZmABA5a/CKreWjopxg3YLgUkUHKSmSNWQ2h27/SsiKbGrsA3Gh/ksBY9etgNd+abWGMUSxHxaGKFfAcxvgdkT0sptDEG3cWg614pGFYgtcT59zK4nnsQeczvFpV0ITHNYWijbtrFK7T+e6M8YxYwxt2eyslbDDd+3Kdw0G5qi+RF13mJ79Ut5fY157ikjOuiVDi75aFrFja2GNiMyy5ze7IyGMOVGDjuVxU4WKH7ecopoKEx2+yn6532KgL3kzQdRRKorXKFUQ9w3Da84cJlslfnhJSu7367F4AtdT5yh9awPPnAUgxSdZWv2qRqPobiuHiOJuMTeejo+lIiMRt5QVhr77zzQUDIbXE7yI8Dlyfq337VmnFBDEOjiXWPOBY8IShYWwWqGle0eKZ2bIev4tzKEu+gl723a7YyIQyuRBB/OEIoPnM6HMbMCdUeXQBKUvQwXNQ5nk2OXK8k/14OzJcROuPavs8DfqH6p0U3164TSuTkZT3ITGIIWNmhsEmjT2ex12fZ7+e8="
        "DISCORD_SECRET"   = "AgBEI70PiZ+wHvtlAp/2BmDvsdE1K5oPsTQpHd3drShXCcdsYLFtgII5V0PXJRKkhDccLAwE/H3Yblf7ntUt2cmGnAOjVlfJOAZfQ8n3bggPbKsH2DrDe7qo1T+P0I01UaWpsH7A7Ho0Ej5+X8p4Y2p1kk/OydPrDSlI/gppO9Os7cx/jxZ9yiVOPLdyHm9FzP+C21klZm4cgMDWwjI+P7bxIKtP3Vz2y6A266OpRDJKzQuDbuWUQVC6M0hvT6XyZqFXne2u/d36u316We8jCdEgSZ98u9bMzOho9b8XrTgV4CT/GE+YmnUSRuQDnpCoAN2xs0zZAFt5OUx7Fmn4MHlaP+7yYfvq8YRrpxDfjgfLmIs8iI+mDSO0mVGkTCg2ROMgkP0ei/iReF5uNGcGu4RO+0h1zux2by85yYPz/8KjGb1DnsUG+WiRKgBpAnJEtO2SuNybDezfbhvp8JXOUsHXkPAsnd23oEd1r+2Ghyt/tG7ZFnPpxepog0HkTXVo3qRww295a8R8R8DsXwulc9gUihbXu2XEXzg4vFikMYhtQDydCCdQ+4oXrXX+fJLuaCw1IbeB4CbuImJQ7MFlr7sUP6SeBKA4a3daHg1pgikbCR+ZRu4b2EmBmgFhvsQ1AfkACWViKYJUPdb75LtGbAukeBYJRfUeD5q/h4QeBsjL0UC9BaDFkcA1MYTGSfAnGZjxuoYpVVpHgEONLz+o4XsJp+3r0kZ2++E/G3qP5OsRjg=="
        "GITHUB_ID"        = "AgCRgGWbQDG/9FozPt/KFwlaTRP0lNPIrR5MkFHw7UZHtNxu5mAmIkCev35eITuGJgZigSfDHaQ1TI9GzJpmaWUnebJEQ3pVo8ukhJL6e5nE/JFq4EPqz6c1tjKI9dsxHp9XQy29vmb1OvMErFS1VuPkhN2O0nQH9sqZrDpjxfu2qkZj4q8IrO0NyqiFb0v6XR7FhDtj1NitF3AAFJSwOB9nha39MZuHW6cOCblmv3z10BD5Rj7h5f/xEbdFUdSJ90NDHygEK5vGqLDmBbRy39LfEXR/d7DDQ1/2YFkecwClWYKVSAKvc58/7qwR54Is3LhSvLZr54Op2BkuhMnO+pl68BoTt6ZbQzA9+Qfw/Dh2p5YpNt2oF9B5TorJlGwGkbzO0QTlPP33lBfzDfWvULihR4L00dfx9KM6ebpp/GSUxzyHvPRUOQ7faPwj5t0WEOWh36302eZCLrUcsplt0cqV3EOCKDZQ/cdHIKe75k1BNfYuXDbge/xypLLUN5axsCXjfphBIP3JNjTy03u+OwvGhUEMQi3KvmIa+pKtL5KVFF5i1TXXRX9sspcq1S1tjzifgf+ldGn8dfQkJkHPUT30pDaPc4vHlUTsUu86gyTbGl0WevTFD7tyKsgMgjLP7q79V2Daw7LG4zRIqm8mi8S1rnByL1Xux1kxHGrfH1buSV3cTLRdHxWXKM4lW02tFh4rJUNyQhHvONF4byI+8SpP03mJ5Q=="
        "GITHUB_SECRET"    = "AgAf8edvGnmC0EclROX3ex86JZT0PN2rl1uEGQt1dEcbM5DlSeyRa1bXf+0Zrg1nUfWEYFTW69NyDFCZ3/1OgWD9ls60FxfSR7O6ZOLqXRmX/Go7j2mucltUDC+nL9giAI54RqxaA1jA0v997bmsaOMjcaRAgnnMsfILNHLGca5//Dsqh/huNxw77HRnGwAzKdmP5DySRZtTdjPWW1hmZk+xOlP038TH8krq+MKabGe7lcOBkwL3pkHtcqVXueQFfZB3Xv3Y7ux5lSruEHHBDvSvArVev8Vx6cfSrQU8kCNGofdLrXv+3YIwSt5m3VyoAFZ/gRfB4csjD6lHzV+dx13rTZGuf97JofGPZ4tiVGTK08o3PFmGdpjyiYzxVI9o5qIPlfjA2hV1AQh4W4EdAX5gc7Z8UbL87ycY4DtbEkh7O4Z7KU+6upFe07xKuoPCkL3Ue9kcP4OkL6VZdMp25TSUmqBQb8+F+s+59MREqrHWvqRaT70xkfyKHpeoCfDAkc27KQ7M0PPBoKSS1azvZpjyY5WcxOyQwiU92gxN6jqFhnn1mN3lgV7rRCFUtqOJX9z/OrqgLifXMxsAw0MDqMue39qBHHcBpOSMy+iHEDracIierGDQrddiXL2W3Q9Nbb1rLfRX55PskkpEUVmWPNyzWZpOAgizcQM8L7nOzTJ3vXzZ5eM4L3d9JlARvZi+tZt8m6HZS2LxpFGv77y28SQigekA9RNEQEmQclZEP2dctiNTt2IRkmTM"
        "FORTY_TWO_ID"     = "AgAgticH71KV+Ld0oKinfNEq+lUuM1KtET4gbF3mWULShR65NRgPrm2YmphKkHlY+WL6Hn2znmaRfuT54vEt6rcmhvEUS6UiLTbzJBCic9z7i1YYuwS6xHL+9ENdi+Rqu1hc02Ui71wFTaJrW0QGDgWWdJJDwOFrgo+m3qS9lQDM7n9ssoXv6weegtNGD1QoR0TTrvdARMnCB3+usq/KlZe8SdkApi/bOseRQqdVIyeE67233oJIuaIqYrj8oA++RJlviwVJArPXGX5Y0jef7ZDOfxJTsXJhdxUy+huk9v+Cc4nGOZJhEszaeKHKoBYeW/2DMS51KnLD+ojSGUPYgmCwlwtb6o5MtgdB6f+7J7IBbC9vIp+mOqKDKD6mvQHXNr1n2uwmK9f/x/FfEV1tksOuOpkip9NxvWy95goKghYHwZtzz48ggMGFzNKrCIGvs2o5po4tNMZZ32FTJBVAIKcpDE4jY45QIDMGntAOuBvy8cE1scLBf3Y5YpfRkK5PxMhRNdHe6CwCcujlqIzOJT0NIVvcO9nmyIUJTlpDYIjZ5xthFtTTsCTu3d9eTY7mxqlshjv37TsRB2M83iXmWRsSkHpQhIxRSfSJzuLJvCLIiE0p8XTQRJhb36fzheIaoLbSh7HAUwEsV/AEcw0THcWVphcq0uxKXk02L7IFXExerWv0CAgJ3jZ07yUULsTBbg8kw04+w3ym4kpa7pICk73UNAX7UFzfIF8fM7/z9hM05cfDabp3ky89D2YLUN+DNl3gNmtjMHlbGsLSUJh9y6V+"
        "FORTY_TWO_SECRET" = "AgAx6aeu7VVsIYbmkna3UdNXuWvOlfzQPCjU0wCIgaS+rjBFvmkwzhyqgPzPOacn7aMGOd7hBDvYVzZNB/Qwq7u54xl3UhkK7oLVhGYeOG7MigY/YFH7Z9KYxgweke5GzV1ecG8fk8py/Vq+WWj2c60P+yE+Fd3/36kefp4Q1PBsrkVasVYVDy5YOOfhvDXUhJ5iHXKGZygE0AeOUksv6PW7NJdkp+nBxcE0xy0JNagZVMEA+eFqcIiPlFVT0R+ajerzYiK0H4xwbZCVSBO3bQt2hllKRTQTYKHjsu0MIPojlTEkMwhUZuXkP176BfKC85CeOqt2fhwGPpNoD8ASdohj6i3tvbiZGtL4Tovgn2IuceydZ0Go18S/0tJfg3cbLZ+zZneFRbEqne0kAclyvEhzz8jbvJIfM/JyHXBEK9ZOO8FE0KmSpIBqMksQkC0vN9NlOtLa82FgYWBkSagfZhagtbfpx8+XSj7yUeb9+oBJcJ77iGtrG6KvVinxZrhFa3agFzYiSenSXXYk54mqwJadCyoKPSiUw+TPqBwYefWn3SekU/j1aLiyjClOa1BUCmg3xU2jidcqX8I91NZcMjkJp+p/Vq9hAi4MOPN69TFJpd3o4YqOUko5nnavULDmO94GxBCMZUrmE6dd447teM0y33LIIMUPRafiEisUpnQn1JiXwgB1n2T27s1BGPTVc04p3Ik5mjptgQ7nCkT0nWWVIWITkM/w+kqpiu3l/OwQ1Lw6jx1MdIugPsAqa0CCUJebfs2sDdbSkcnhJf27B5PF"
      }
    }

    "jwtks-service-certs-jwk" : {
      isClusterWide = false
      namespace     = "production"

      # TODO(@42Atomys): Scope the providers to the namespace.
      reflected           = true
      reflectedNamespaces = ["staging"]

      encryptedData = {
        "private.key" : "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"
        "public.pem" : "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"
      }
    }
  }
}
.class final Lcom/android/server/textservices/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "systemLocale"  # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 72
    if-eqz p0, :cond_42

    .line 73
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 75
    .local v1, "hasLanguage":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "country":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 77
    .local v3, "hasCountry":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "variant":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 79
    .local v5, "hasVariant":Z
    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v5, :cond_2c

    .line 80
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v0, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_2d

    .line 82
    .end local v6  # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_2c
    const/4 v6, 0x0

    .line 84
    .restart local v6  # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :goto_2d
    if-eqz v1, :cond_37

    if-eqz v3, :cond_37

    .line 85
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_38

    .line 87
    .end local v7  # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_37
    const/4 v7, 0x0

    .line 89
    .restart local v7  # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :goto_38
    if-eqz v1, :cond_40

    .line 90
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .local v8, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_41

    .line 92
    .end local v8  # "systemLocaleLanguage":Ljava/util/Locale;
    :cond_40
    const/4 v8, 0x0

    .line 94
    .end local v0  # "language":Ljava/lang/String;
    .end local v1  # "hasLanguage":Z
    .end local v2  # "country":Ljava/lang/String;
    .end local v3  # "hasCountry":Z
    .end local v4  # "variant":Ljava/lang/String;
    .end local v5  # "hasVariant":Z
    .restart local v8  # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_41
    goto :goto_45

    .line 95
    .end local v6  # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .end local v7  # "systemLocaleLanguageCountry":Ljava/util/Locale;
    .end local v8  # "systemLocaleLanguage":Ljava/util/Locale;
    :cond_42
    const/4 v6, 0x0

    .line 96
    .restart local v6  # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v7, 0x0

    .line 97
    .restart local v7  # "systemLocaleLanguageCountry":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 100
    .restart local v8  # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v6, :cond_4f

    .line 102
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4f
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 106
    if-eqz v7, :cond_7d

    .line 113
    nop

    .line 114
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 117
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_6a
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 120
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_77
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 129
    :cond_7d
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 140
    :cond_8d
    if-eqz v7, :cond_92

    .line 141
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_92
    if-eqz v8, :cond_97

    .line 144
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_97
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_a6
    return-object v0
.end method

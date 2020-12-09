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
    .registers 7
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
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    .line 73
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 75
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 77
    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 79
    xor-int/lit8 v5, v5, 0x1

    if-eqz v2, :cond_2d

    if-eqz v4, :cond_2d

    if-eqz v5, :cond_2d

    .line 80
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 82
    :cond_2d
    move-object v5, v0

    .line 84
    :goto_2e
    if-eqz v2, :cond_38

    if-eqz v4, :cond_38

    .line 85
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 87
    :cond_38
    move-object p0, v0

    .line 89
    :goto_39
    if-eqz v2, :cond_41

    .line 90
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_42

    .line 92
    :cond_41
    nop

    .line 94
    :goto_42
    move-object v1, p0

    move-object p0, v0

    move-object v0, v5

    goto :goto_4a

    .line 95
    :cond_46
    nop

    .line 96
    nop

    .line 97
    move-object p0, v0

    move-object v1, p0

    .line 100
    :goto_4a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    if-eqz v0, :cond_54

    .line 102
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_54
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 106
    if-eqz v1, :cond_82

    .line 113
    nop

    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    .line 117
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_6f
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    .line 120
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_7c
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 129
    :cond_82
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 140
    :cond_92
    if-eqz v1, :cond_97

    .line 141
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_97
    if-eqz p0, :cond_9c

    .line 144
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_9c
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_ab
    return-object v2
.end method

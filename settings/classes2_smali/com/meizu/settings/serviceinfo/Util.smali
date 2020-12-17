.class public Lcom/meizu/settings/serviceinfo/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/serviceinfo/Util$InfoItem;,
        Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;,
        Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;,
        Lcom/meizu/settings/serviceinfo/Util$FixRecord;
    }
.end annotation


# static fields
.field public static PHONE_COOPERATE:Ljava/lang/String; = "Meizu_phone_2013"


# direct methods
.method public static getLanguageEnv()Ljava/lang/String;
    .registers 4

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hk"

    if-eqz v2, :cond_37

    const-string v2, "cn"

    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v1, "zh-CN"

    goto :goto_37

    :cond_25
    const-string v2, "tw"

    .line 246
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v1, "zh-TW"

    goto :goto_37

    .line 248
    :cond_30
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move-object v1, v3

    :cond_37
    :goto_37
    return-object v1
.end method

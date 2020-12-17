.class public Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "FlymeLocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-void
.end method

.method private getLocaleRanking(Ljava/util/Locale;)I
    .registers 2

    .line 89
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_a
    sget-object p0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 93
    :cond_14
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x2

    return p0

    :cond_22
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;)I
    .registers 8

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->getLocaleRanking(Ljava/util/Locale;)I

    move-result v0

    .line 102
    iget-object v1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->getLocaleRanking(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string v3, "locale ranking %s=%d,  %s=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeLocalePicker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_3d

    return v4

    :cond_3d
    if-ge v0, v1, :cond_41

    const/4 p0, -0x1

    return p0

    .line 109
    :cond_41
    sget-object v0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 62
    check-cast p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->compareTo(Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;)I

    move-result p0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object p0
.end method

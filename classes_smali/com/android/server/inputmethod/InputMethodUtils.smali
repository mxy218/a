.class final Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;,
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field private static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field private static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field private static final sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 75
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 6

    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 3

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 2

    .line 617
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 618
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .registers 3

    .line 733
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 734
    const/4 p0, 0x1

    return p0

    .line 735
    :catch_5
    move-exception p0

    .line 736
    const/4 p0, 0x0

    return p0
.end method

.method static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .registers 11

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 345
    return v0

    .line 347
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 348
    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_6b

    .line 349
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 350
    if-eqz p2, :cond_35

    .line 351
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    .line 352
    if-eqz v4, :cond_66

    .line 353
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 354
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 355
    goto :goto_66

    .line 357
    :cond_34
    goto :goto_51

    .line 358
    :cond_35
    new-instance v4, Ljava/util/Locale;

    .line 359
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 361
    goto :goto_66

    .line 364
    :cond_51
    :goto_51
    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_69

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 365
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_69

    .line 348
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 366
    :cond_69
    :goto_69
    const/4 p0, 0x1

    return p0

    .line 369
    :cond_6b
    return v0
.end method

.method static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .line 568
    const/4 v0, 0x0

    if-eqz p1, :cond_6a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6a

    .line 571
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 572
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 574
    :cond_1a
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 575
    nop

    .line 576
    nop

    .line 577
    nop

    .line 578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 579
    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_28
    if-ge v2, v1, :cond_64

    .line 580
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 581
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 582
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 585
    if-eqz p2, :cond_4a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 586
    :cond_4a
    if-nez v0, :cond_4d

    .line 587
    move-object v0, v5

    .line 589
    :cond_4d
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 591
    nop

    .line 592
    move-object v4, v5

    goto :goto_64

    .line 593
    :cond_56
    if-nez v3, :cond_61

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 595
    nop

    .line 596
    const/4 v3, 0x1

    move-object v4, v5

    .line 579
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 601
    :cond_64
    :goto_64
    if-nez v4, :cond_69

    if-eqz p4, :cond_69

    .line 602
    return-object v0

    .line 613
    :cond_69
    return-object v4

    .line 569
    :cond_6a
    :goto_6a
    return-object v0
.end method

.method static getApiCallStack()Ljava/lang/String;
    .registers 5

    .line 113
    nop

    .line 115
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_7} :catch_7

    .line 116
    :catch_7
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    const-string v2, ""

    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_2c

    .line 119
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 122
    goto :goto_28

    .line 123
    :cond_1f
    const-string v4, "Transact("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2c

    .line 125
    nop

    .line 118
    :goto_28
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_f

    .line 131
    :cond_2c
    return-object v2
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 326
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    .line 327
    nop

    .line 328
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    .line 329
    if-nez p2, :cond_1d

    .line 330
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v7, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object p2

    .line 332
    invoke-virtual {p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 334
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_29

    aget-object v10, v0, v3

    .line 157
    move v11, v2

    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_26

    .line 158
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 161
    return-object v10

    .line 157
    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 156
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 167
    :cond_29
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_51

    aget-object v10, v0, v3

    .line 168
    move v11, v2

    :goto_32
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_4e

    .line 169
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 172
    return-object v10

    .line 168
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 167
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 176
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found no fallback locale. imis="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 p0, 0x0

    return-object p0
.end method

.method static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 7

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 713
    if-eqz p2, :cond_40

    .line 714
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 715
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 714
    invoke-virtual {p2, p0, v3, p1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 717
    const-string p1, ""

    goto :goto_39

    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_39
    aput-object p1, v1, p0

    .line 714
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_41

    .line 718
    :cond_40
    nop

    .line 713
    :goto_41
    return-object v0
.end method

.method static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 435
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_b
    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_20

    .line 439
    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object p0

    .line 441
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_39

    .line 446
    nop

    .line 447
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    .line 448
    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_29
    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 451
    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 452
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 453
    monitor-exit v2

    .line 454
    return-object p0

    .line 453
    :catchall_36
    move-exception p0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p0

    .line 441
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 460
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 463
    :cond_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 467
    move v5, v1

    :goto_2b
    if-ge v5, v3, :cond_49

    .line 469
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 470
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 471
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 473
    invoke-virtual {v4, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 477
    :cond_49
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_59

    .line 478
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 481
    :cond_59
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 483
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 485
    move v6, v1

    :goto_64
    const-string v7, "keyboard"

    if-ge v6, v3, :cond_96

    .line 486
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 487
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    .line 488
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 489
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 491
    :cond_7c
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 492
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_8a
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :goto_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 498
    :cond_96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 499
    sget-object v6, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v5, v6, v0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 502
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_e9

    .line 503
    nop

    .line 504
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 505
    move v9, v1

    :goto_ad
    if-ge v9, v6, :cond_c1

    .line 506
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 507
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v10

    if-eqz v10, :cond_be

    .line 508
    nop

    .line 509
    move v6, v8

    goto :goto_c2

    .line 505
    :cond_be
    add-int/lit8 v9, v9, 0x1

    goto :goto_ad

    :cond_c1
    move v6, v1

    .line 512
    :goto_c2
    if-nez v6, :cond_e9

    .line 513
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 514
    nop

    :goto_c9
    if-ge v1, v6, :cond_e9

    .line 515
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 516
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    .line 517
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e6

    const-string v10, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v9, v10}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 519
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 525
    :cond_e9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 526
    invoke-static {p0, p1, v7, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    .line 528
    if-eqz p0, :cond_f8

    .line 529
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_f8
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_100
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_112

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 535
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {p1, v1, v0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 537
    goto :goto_100

    .line 539
    :cond_112
    return-object v3
.end method

.method private static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 547
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 548
    if-gez v0, :cond_9

    .line 549
    return-object p0

    .line 551
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 282
    new-instance v7, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$1;)V

    .line 283
    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 285
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 286
    return-object v7

    .line 288
    :cond_18
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 290
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 291
    return-object v7

    .line 293
    :cond_2a
    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 295
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 296
    return-object v7

    .line 298
    :cond_3c
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 300
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 301
    return-object v7

    .line 303
    :cond_4e
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 305
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 306
    return-object v7

    .line 308
    :cond_60
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 310
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_72

    .line 311
    return-object v7

    .line 313
    :cond_72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No software keyboard is found. imis="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " systemLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " fallbackLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v7
.end method

.method static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 382
    if-eqz p0, :cond_46

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_46

    .line 386
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 387
    const/4 v1, -0x1

    .line 388
    :goto_e
    const/4 v2, 0x0

    if-lez v0, :cond_3b

    .line 389
    add-int/lit8 v0, v0, -0x1

    .line 390
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 391
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 392
    goto :goto_e

    .line 394
    :cond_20
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_31

    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string v5, "keyboard"

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 396
    return-object v3

    .line 398
    :cond_31
    if-gez v1, :cond_3a

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 399
    move v1, v0

    .line 401
    :cond_3a
    goto :goto_e

    .line 402
    :cond_3b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0

    .line 383
    :cond_46
    :goto_46
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .registers 5

    .line 410
    if-eqz p0, :cond_17

    .line 411
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 412
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 413
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_14

    .line 415
    return v1

    .line 412
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 419
    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 375
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    .line 376
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 378
    :cond_16
    return-object v0
.end method

.method private static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 1

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 204
    :catch_b
    move-exception p0

    .line 205
    const/4 p0, 0x0

    return-object p0
.end method

.method static isSoftInputModeStateVisibleAllowed(II)Z
    .registers 4

    .line 1289
    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_6

    .line 1291
    return v0

    .line 1293
    :cond_6
    and-int/lit8 p0, p1, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_c

    .line 1294
    return v1

    .line 1296
    :cond_c
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_11

    .line 1297
    return v1

    .line 1299
    :cond_11
    return v0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 5

    .line 182
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 183
    return v1

    .line 185
    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 186
    return v1

    .line 188
    :cond_11
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result p1

    if-nez p1, :cond_18

    .line 189
    return v1

    .line 191
    :cond_18
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    .line 192
    move p2, v1

    :goto_1d
    if-ge p2, p1, :cond_2e

    .line 193
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 195
    const/4 p0, 0x1

    return p0

    .line 192
    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 198
    :cond_2e
    return v1
.end method

.method private static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 8

    .line 138
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 139
    return v1

    .line 141
    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 142
    return v1

    .line 144
    :cond_11
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 145
    return v1

    .line 147
    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .registers 2

    .line 406
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static resolveUserId(IILjava/io/PrintWriter;)[I
    .registers 7

    .line 1319
    const-class v0, Landroid/os/UserManagerInternal;

    .line 1320
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1322
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_38

    .line 1323
    sget-boolean p0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz p0, :cond_15

    .line 1324
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    return-object p0

    .line 1326
    :cond_15
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    .line 1327
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    array-length p2, p1

    :goto_1f
    if-ge v1, p2, :cond_33

    aget v2, p1, v1

    .line 1328
    invoke-virtual {v0, v2}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v2

    .line 1329
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_30

    .line 1330
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->add(I)V

    .line 1327
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1333
    :cond_33
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    .line 1337
    :cond_38
    const/4 v2, -0x2

    if-ne p0, v2, :cond_3d

    .line 1338
    move p0, p1

    goto :goto_58

    .line 1339
    :cond_3d
    if-gez p0, :cond_51

    .line 1340
    if-eqz p2, :cond_4e

    .line 1341
    const-string p1, "Pseudo user ID "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1343
    const-string p0, " is not supported."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    :cond_4e
    new-array p0, v1, [I

    return-object p0

    .line 1346
    :cond_51
    invoke-virtual {v0, p0}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1347
    nop

    .line 1356
    :goto_58
    sget-boolean p1, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz p1, :cond_5d

    .line 1357
    goto :goto_61

    :cond_5d
    invoke-virtual {v0, p0}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    .line 1358
    :goto_61
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p0, p1, v1

    return-object p1

    .line 1349
    :cond_67
    if-eqz p2, :cond_76

    .line 1350
    const-string p1, "User #"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string p0, " does not exit."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    :cond_76
    new-array p0, v1, [I

    return-object p0
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    .line 683
    const-string v0, " userId="

    const-string v1, "InputMethodUtils"

    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_3e

    .line 688
    nop

    .line 689
    if-eqz v2, :cond_e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 695
    :cond_e
    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    :try_start_14
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 702
    nop

    .line 708
    :cond_18
    return-void

    .line 698
    :catch_19
    move-exception p0

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingPackage="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    return-void

    .line 684
    :catch_3e
    move-exception p0

    .line 685
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    return-void
.end method

.method static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_8f

    array-length v1, v0

    if-nez v1, :cond_12

    goto/16 :goto_8f

    .line 633
    :cond_12
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerInternal;->get()Lcom/android/server/textservices/TextServicesManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 634
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_8e

    aget-object v5, v0, v4

    .line 638
    nop

    .line 639
    move v6, v3

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_40

    .line 640
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 641
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 642
    nop

    .line 643
    move v6, v8

    goto :goto_41

    .line 639
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_40
    move v6, v3

    .line 646
    :goto_41
    if-eqz v6, :cond_44

    .line 648
    goto :goto_8b

    .line 650
    :cond_44
    if-eqz v1, :cond_51

    .line 651
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 656
    goto :goto_8b

    .line 658
    :cond_51
    nop

    .line 660
    const v6, 0x8000

    :try_start_55
    invoke-interface {p0, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_59} :catch_6b

    .line 666
    nop

    .line 667
    if-nez v6, :cond_5d

    .line 669
    goto :goto_8b

    .line 671
    :cond_5d
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_63

    goto :goto_64

    :cond_63
    move v8, v3

    .line 672
    :goto_64
    if-nez v8, :cond_67

    .line 673
    goto :goto_8b

    .line 675
    :cond_67
    invoke-static {p0, v5, p2, p3}, Lcom/android/server/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8b

    .line 662
    :catch_6b
    move-exception v6

    .line 663
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationInfo failed. packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "InputMethodUtils"

    invoke-static {v7, v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    nop

    .line 634
    :goto_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 677
    :cond_8e
    return-void

    .line 629
    :cond_8f
    :goto_8f
    return-void
.end method

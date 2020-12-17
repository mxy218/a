.class final Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodUtils$Injector;,
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

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 79
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 93
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

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 439
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 7
    .param p0, "x0"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/util/Locale;
    .param p4, "x4"  # Z
    .param p5, "x5"  # Ljava/lang/String;

    .line 72
    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "x0"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Z

    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 72
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 3
    .param p0, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 634
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 635
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .registers 5
    .param p0, "appOpsManager"  # Landroid/app/AppOpsManager;
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 755
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 756
    const/4 v0, 0x1

    return v0

    .line 757
    :catch_5
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .registers 11
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"  # Ljava/util/Locale;
    .param p2, "checkCountry"  # Z
    .param p3, "mode"  # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 362
    return v0

    .line 364
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 365
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_6b

    .line 366
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 367
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_35

    .line 368
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    .line 369
    .local v4, "subtypeLocale":Ljava/util/Locale;
    if-eqz v4, :cond_66

    .line 370
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 371
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 372
    goto :goto_66

    .line 374
    .end local v4  # "subtypeLocale":Ljava/util/Locale;
    :cond_34
    goto :goto_51

    .line 375
    :cond_35
    new-instance v4, Ljava/util/Locale;

    .line 376
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v4  # "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 378
    goto :goto_66

    .line 381
    .end local v4  # "subtypeLocale":Ljava/util/Locale;
    :cond_51
    :goto_51
    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_69

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 382
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_69

    .line 365
    .end local v3  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 383
    .restart local v3  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_69
    :goto_69
    const/4 v0, 0x1

    return v0

    .line 386
    .end local v2  # "i":I
    .end local v3  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6b
    return v0
.end method

.method static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 15
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p2, "mode"  # Ljava/lang/String;
    .param p3, "locale"  # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"  # Z
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

    .line 585
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_65

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_65

    .line 588
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 589
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 591
    :cond_19
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .line 593
    .local v1, "partialMatchFound":Z
    const/4 v2, 0x0

    .line 594
    .local v2, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .line 595
    .local v3, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 596
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_5f

    .line 597
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 598
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 599
    .local v7, "subtypeLocale":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 602
    .local v8, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_47

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 603
    :cond_47
    if-nez v3, :cond_4a

    .line 604
    move-object v3, v6

    .line 606
    :cond_4a
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 608
    move-object v2, v6

    .line 609
    goto :goto_5f

    .line 610
    :cond_52
    if-nez v1, :cond_5c

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 612
    move-object v2, v6

    .line 613
    const/4 v1, 0x1

    .line 596
    .end local v6  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7  # "subtypeLocale":Ljava/lang/String;
    .end local v8  # "subtypeLanguage":Ljava/lang/String;
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 618
    .end local v5  # "i":I
    :cond_5f
    :goto_5f
    if-nez v2, :cond_64

    if-eqz p4, :cond_64

    .line 619
    return-object v3

    .line 630
    :cond_64
    return-object v2

    .line 586
    .end local v0  # "language":Ljava/lang/String;
    .end local v1  # "partialMatchFound":Z
    .end local v2  # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3  # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4  # "N":I
    :cond_65
    :goto_65
    const/4 v0, 0x0

    return-object v0
.end method

.method static getApiCallStack()Ljava/lang/String;
    .registers 6

    .line 117
    const-string v0, ""

    .line 119
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0  # "apiCallStack":Ljava/lang/String;
    throw v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_8} :catch_8

    .line 120
    .restart local v0  # "apiCallStack":Ljava/lang/String;
    :catch_8
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 122
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_e
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 123
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 126
    move-object v0, v4

    goto :goto_28

    .line 127
    :cond_1f
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2b

    .line 129
    move-object v0, v4

    .line 122
    .end local v4  # "tempCallStack":Ljava/lang/String;
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 135
    .end local v1  # "e":Ljava/lang/RuntimeException;
    .end local v2  # "frames":[Ljava/lang/StackTraceElement;
    .end local v3  # "j":I
    :cond_2b
    return-object v0
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;
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

    .line 343
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 13
    .param p0, "context"  # Landroid/content/Context;
    .param p2, "onlyMinimum"  # Z
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

    .line 324
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 330
    .local v0, "fallbackLocale":Ljava/util/Locale;
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    .line 331
    .local v8, "systemLocale":Ljava/util/Locale;
    nop

    .line 332
    invoke-static {p1, p0, v8, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v9

    .line 333
    .local v9, "builder":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    if-nez p2, :cond_1e

    .line 334
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v7, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p0

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 338
    :cond_1e
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .registers 14
    .param p1, "context"  # Landroid/content/Context;
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

    .line 160
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_2b

    aget-object v10, v0, v3

    .line 161
    .local v10, "fallbackLocale":Ljava/util/Locale;
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_28

    .line 162
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 165
    return-object v10

    .line 161
    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 160
    .end local v10  # "fallbackLocale":Ljava/util/Locale;
    .end local v11  # "i":I
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 171
    :cond_2b
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    :goto_2e
    if-ge v2, v1, :cond_54

    aget-object v9, v0, v2

    .line 172
    .local v9, "fallbackLocale":Ljava/util/Locale;
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_51

    .line 173
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v4, p1

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 176
    return-object v9

    .line 172
    :cond_4e
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 171
    .end local v9  # "fallbackLocale":Ljava/util/Locale;
    .end local v10  # "i":I
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 180
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found no fallback locale. imis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 729
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 731
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodUtils$Injector;->IS_FLYME:Z

    if-eqz v1, :cond_11

    .line 732
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$Injector;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 735
    :cond_11
    if-eqz p2, :cond_49

    .line 736
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 737
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 736
    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 739
    const-string v3, ""

    goto :goto_42

    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_42
    aput-object v3, v1, v2

    .line 736
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4a

    .line 740
    :cond_49
    move-object v1, v0

    .line 735
    :goto_4a
    return-object v1
.end method

.method static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 450
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 452
    .local v0, "systemLocales":Landroid/os/LocaleList;
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_b
    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_20

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 458
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_39

    .line 463
    nop

    .line 464
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 465
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v3, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 467
    :try_start_29
    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 468
    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 470
    monitor-exit v3

    .line 471
    return-object v2

    .line 470
    :catchall_36
    move-exception v1

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1

    .line 458
    .end local v2  # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 18
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 476
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 477
    .local v0, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 478
    .local v1, "systemLocales":Landroid/os/LocaleList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "systemLocale":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 480
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 483
    .local v3, "numSubtypes":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 484
    .local v4, "applicableModeAndSubtypesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    if-ge v5, v3, :cond_49

    .line 486
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 487
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 488
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, "mode":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 490
    invoke-virtual {v4, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .end local v6  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7  # "mode":Ljava/lang/String;
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 494
    .end local v5  # "i":I
    :cond_49
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_59

    .line 495
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5

    .line 498
    :cond_59
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 500
    .local v5, "nonKeyboardSubtypesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v6, "keyboardSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_64
    const-string/jumbo v8, "keyboard"

    if-ge v7, v3, :cond_97

    .line 503
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 504
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, "mode":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 506
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 508
    :cond_7d
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8b

    .line 509
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_8b
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v9  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10  # "mode":Ljava/lang/String;
    :goto_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 515
    .end local v7  # "i":I
    :cond_97
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v7, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v9, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v6, v9, v1, v7}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 519
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e7

    .line 520
    const/4 v9, 0x0

    .line 521
    .local v9, "hasAsciiCapableKeyboard":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 522
    .local v10, "numApplicationSubtypes":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ad
    if-ge v11, v10, :cond_c0

    .line 523
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 524
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 525
    const/4 v9, 0x1

    .line 526
    goto :goto_c0

    .line 522
    .end local v12  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_bd
    add-int/lit8 v11, v11, 0x1

    goto :goto_ad

    .line 529
    .end local v11  # "i":I
    :cond_c0
    :goto_c0
    if-nez v9, :cond_e7

    .line 530
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 531
    .local v11, "numKeyboardSubtypes":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c7
    if-ge v12, v11, :cond_e7

    .line 532
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodSubtype;

    .line 533
    .local v13, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v14

    .line 534
    .local v14, "mode":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e4

    const-string v15, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v13, v15}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e4

    .line 536
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v13  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14  # "mode":Ljava/lang/String;
    :cond_e4
    add-int/lit8 v12, v12, 0x1

    goto :goto_c7

    .line 542
    .end local v9  # "hasAsciiCapableKeyboard":Z
    .end local v10  # "numApplicationSubtypes":I
    .end local v11  # "numKeyboardSubtypes":I
    .end local v12  # "i":I
    :cond_e7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 543
    const/4 v9, 0x1

    move-object/from16 v10, p0

    invoke-static {v10, v0, v8, v2, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 545
    .local v8, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v8, :cond_fc

    .line 546
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 542
    .end local v8  # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_fa
    move-object/from16 v10, p0

    .line 551
    :cond_fc
    :goto_fc
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_104
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 552
    .local v9, "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v11, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v9, v11, v1, v7}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 554
    .end local v9  # "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto :goto_104

    .line 556
    :cond_116
    return-object v7
.end method

.method private static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"  # Ljava/lang/String;

    .line 564
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 565
    .local v0, "idx":I
    if-gez v0, :cond_9

    .line 566
    return-object p0

    .line 568
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "systemLocale"  # Ljava/util/Locale;
    .param p3, "fallbackLocale"  # Ljava/util/Locale;
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

    .line 286
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$1;)V

    .line 287
    .local v0, "builder":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 289
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 290
    return-object v0

    .line 292
    :cond_19
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 294
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 295
    return-object v0

    .line 297
    :cond_2c
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 299
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 300
    return-object v0

    .line 302
    :cond_3f
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 304
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 305
    return-object v0

    .line 307
    :cond_52
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 309
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 310
    return-object v0

    .line 312
    :cond_65
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 314
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    .line 315
    return-object v0

    .line 317
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No software keyboard is found. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " systemLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fallbackLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-object v0
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

    .line 399
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_47

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_47

    .line 403
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    .local v0, "i":I
    const/4 v1, -0x1

    .line 405
    .local v1, "firstFoundSystemIme":I
    :goto_e
    const/4 v2, 0x0

    if-lez v0, :cond_3c

    .line 406
    add-int/lit8 v0, v0, -0x1

    .line 407
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 408
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 409
    goto :goto_e

    .line 411
    :cond_20
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string/jumbo v5, "keyboard"

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 413
    return-object v3

    .line 415
    :cond_32
    if-gez v1, :cond_3b

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 416
    move v1, v0

    .line 418
    .end local v3  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3b
    goto :goto_e

    .line 419
    :cond_3c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    return-object v2

    .line 400
    .end local v0  # "i":I
    .end local v1  # "firstFoundSystemIme":I
    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .registers 6
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"  # I

    .line 427
    if-eqz p0, :cond_17

    .line 428
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 429
    .local v0, "subtypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 430
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 431
    .local v2, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_14

    .line 432
    return v1

    .line 429
    .end local v2  # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 436
    .end local v0  # "subtypeCount":I
    .end local v1  # "i":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 392
    .local v1, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 393
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 395
    .end local v2  # "i":I
    :cond_16
    return-object v0
.end method

.method private static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 208
    :catch_b
    move-exception v0

    .line 209
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isBuildExtAndDefaultIME(Ljava/lang/String;)Z
    .registers 5
    .param p0, "id"  # Ljava/lang/String;

    .line 351
    const-string v0, "com.emoji.keyboard.touchpal/com.cootek.smartinput5.TouchPalIME"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 352
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 353
    .local v0, "isInternationalAndIMEIntl":Z
    :goto_13
    const-string v3, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 354
    invoke-static {}, Landroid/os/BuildExt;->isIndiaVersion()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    .line 355
    .local v3, "isIndiaAndDefIME":Z
    :goto_24
    if-nez v0, :cond_2a

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :cond_2a
    :goto_2a
    return v1
.end method

.method public static isGoogleVoiceInput(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 4
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;

    .line 1404
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1405
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1407
    const-string v2, "com.google.android.voicesearch.ime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1408
    const/4 v0, 0x1

    return v0

    .line 1410
    :cond_18
    return v0
.end method

.method static isSoftInputModeStateVisibleAllowed(II)Z
    .registers 5
    .param p0, "targetSdkVersion"  # I
    .param p1, "startInputFlags"  # I

    .line 1311
    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_6

    .line 1313
    return v0

    .line 1315
    :cond_6
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1316
    return v2

    .line 1318
    :cond_c
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_11

    .line 1319
    return v2

    .line 1321
    :cond_11
    return v0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 8
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"  # Z

    .line 186
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 187
    return v1

    .line 189
    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    return v1

    .line 192
    :cond_11
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_18

    .line 193
    return v1

    .line 195
    :cond_18
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 196
    .local v0, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_2e

    .line 197
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 198
    .local v3, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 199
    const/4 v1, 0x1

    return v1

    .line 196
    .end local v3  # "s":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 202
    .end local v2  # "i":I
    :cond_2e
    return v1
.end method

.method private static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 8
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"  # Z
    .param p3, "requiredLocale"  # Ljava/util/Locale;
    .param p4, "checkCountry"  # Z
    .param p5, "requiredSubtypeMode"  # Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 143
    return v1

    .line 145
    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 146
    return v1

    .line 148
    :cond_11
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 149
    return v1

    .line 151
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .registers 4
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"  # I

    .line 423
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static resolveUserId(IILjava/io/PrintWriter;)[I
    .registers 11
    .param p0, "userIdToBeResolved"  # I
    .param p1, "currentUserId"  # I
    .param p2, "warningWriter"  # Ljava/io/PrintWriter;

    .line 1341
    const-class v0, Landroid/os/UserManagerInternal;

    .line 1342
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1344
    .local v0, "userManagerInternal":Landroid/os/UserManagerInternal;
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_38

    .line 1345
    sget-boolean v2, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v2, :cond_15

    .line 1346
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    return-object v1

    .line 1348
    :cond_15
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 1349
    .local v2, "result":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    :goto_1f
    if-ge v1, v4, :cond_33

    aget v5, v3, v1

    .line 1350
    .local v5, "userId":I
    invoke-virtual {v0, v5}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v6

    .line 1351
    .local v6, "parentUserId":I
    invoke-virtual {v2, v6}, Landroid/util/IntArray;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_30

    .line 1352
    invoke-virtual {v2, v6}, Landroid/util/IntArray;->add(I)V

    .line 1349
    .end local v5  # "userId":I
    .end local v6  # "parentUserId":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1355
    :cond_33
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1

    .line 1359
    .end local v2  # "result":Landroid/util/IntArray;
    :cond_38
    const/4 v2, -0x2

    if-ne p0, v2, :cond_3d

    .line 1360
    move v2, p1

    .local v2, "sourceUserId":I
    goto :goto_58

    .line 1361
    .end local v2  # "sourceUserId":I
    :cond_3d
    if-gez p0, :cond_51

    .line 1362
    if-eqz p2, :cond_4e

    .line 1363
    const-string v2, "Pseudo user ID "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1365
    const-string v2, " is not supported."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    :cond_4e
    new-array v1, v1, [I

    return-object v1

    .line 1368
    :cond_51
    invoke-virtual {v0, p0}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1369
    move v2, p0

    .line 1378
    .restart local v2  # "sourceUserId":I
    :goto_58
    sget-boolean v3, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v3, :cond_5e

    .line 1379
    move v3, v2

    goto :goto_62

    :cond_5e
    invoke-virtual {v0, v2}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 1380
    .local v3, "resolvedUserId":I
    :goto_62
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v3, v4, v1

    return-object v4

    .line 1371
    .end local v2  # "sourceUserId":I
    .end local v3  # "resolvedUserId":I
    :cond_68
    if-eqz p2, :cond_77

    .line 1372
    const-string v2, "User #"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1374
    const-string v2, " does not exit."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    :cond_77
    new-array v1, v1, [I

    return-object v1
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0, "packageManager"  # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 700
    const-string v0, " userId="

    const-string v1, "InputMethodUtils"

    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_3e

    .line 705
    .local v2, "state":I
    nop

    .line 706
    if-eqz v2, :cond_e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 712
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

    .line 719
    nop

    .line 725
    :cond_18
    return-void

    .line 715
    :catch_19
    move-exception v3

    .line 716
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callingPackage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    return-void

    .line 701
    .end local v2  # "state":I
    .end local v3  # "e":Landroid/os/RemoteException;
    :catch_3e
    move-exception v2

    .line 702
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    return-void
.end method

.method static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .registers 15
    .param p0, "packageManager"  # Landroid/content/pm/IPackageManager;
    .param p2, "userId"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
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

    .line 643
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v0, :cond_8f

    array-length v1, v0

    if-nez v1, :cond_12

    goto/16 :goto_8f

    .line 650
    :cond_12
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerInternal;->get()Lcom/android/server/textservices/TextServicesManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 651
    .local v1, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_8e

    aget-object v5, v0, v4

    .line 655
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 656
    .local v6, "enabledIme":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3e

    .line 657
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 658
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 659
    const/4 v6, 0x1

    .line 660
    goto :goto_3e

    .line 656
    .end local v8  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 663
    .end local v7  # "j":I
    :cond_3e
    :goto_3e
    if-eqz v6, :cond_41

    .line 665
    goto :goto_8b

    .line 667
    :cond_41
    if-eqz v1, :cond_4e

    .line 668
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 673
    goto :goto_8b

    .line 675
    :cond_4e
    const/4 v7, 0x0

    .line 677
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    const v8, 0x8000

    :try_start_52
    invoke-interface {p0, v5, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_6b

    move-object v7, v8

    .line 683
    nop

    .line 684
    if-nez v7, :cond_5b

    .line 686
    goto :goto_8b

    .line 688
    :cond_5b
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_62

    goto :goto_63

    :cond_62
    move v9, v3

    :goto_63
    move v8, v9

    .line 689
    .local v8, "isSystemPackage":Z
    if-nez v8, :cond_67

    .line 690
    goto :goto_8b

    .line 692
    :cond_67
    invoke-static {p0, v5, p2, p3}, Lcom/android/server/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8b

    .line 679
    .end local v8  # "isSystemPackage":Z
    :catch_6b
    move-exception v8

    .line 680
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationInfo failed. packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "InputMethodUtils"

    invoke-static {v10, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    nop

    .line 651
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "enabledIme":Z
    .end local v7  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8  # "e":Landroid/os/RemoteException;
    :goto_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 694
    :cond_8e
    return-void

    .line 646
    .end local v1  # "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    :cond_8f
    :goto_8f
    return-void
.end method

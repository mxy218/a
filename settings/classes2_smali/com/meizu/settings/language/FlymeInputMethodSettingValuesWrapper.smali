.class public Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "FlymeInputMethodSettingValuesWrapper.java"


# static fields
.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String; = "FlymeInputMethodSettingValuesWrapper"

.field private static volatile sInstance:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;


# instance fields
.field private final mAsciiCapableEnabledImis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    return-void
.end method

.method private getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 149
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2e

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 151
    invoke-virtual {p0, v2, p1}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    if-nez v1, :cond_2d

    .line 156
    sget-object p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string p1, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return v1

    :catchall_2e
    move-exception p0

    .line 149
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;
    .registers 3

    .line 52
    sget-object v0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->sInstance:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    if-nez v0, :cond_17

    .line 53
    sget-object v0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 54
    :try_start_7
    sget-object v1, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->sInstance:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    if-nez v1, :cond_12

    .line 55
    new-instance v1, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    invoke-direct {v1, p0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->sInstance:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    .line 57
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 59
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->sInstance:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    return-object p0
.end method

.method private isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p0

    .line 165
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2c

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 167
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p0

    .line 165
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private updateAsciiCapableEnabledImis()V
    .registers 9

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 95
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 97
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_12

    .line 99
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    const-string v6, "keyboard"

    .line 100
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 101
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 102
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 107
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method


# virtual methods
.method public getInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .registers 7

    .line 117
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 119
    :try_start_7
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_18

    if-eqz v0, :cond_18

    .line 120
    monitor-exit v1

    return v3

    .line 122
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_39

    .line 125
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isDefaultIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v3

    .line 129
    :cond_20
    invoke-direct {p0, p2}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v3, :cond_28

    return v2

    :cond_28
    if-ne v1, v3, :cond_2d

    if-nez v0, :cond_2d

    return v2

    .line 138
    :cond_2d
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_34

    return v2

    .line 141
    :cond_34
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result p0

    return p0

    :catchall_39
    move-exception p0

    .line 122
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .registers 10

    .line 176
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 180
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_1f
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 186
    sget-object p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string p2, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 191
    :cond_39
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refreshAllInputMethodAndSubtypes()V
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 82
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 85
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 87
    :cond_32
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->updateAsciiCapableEnabledImis()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

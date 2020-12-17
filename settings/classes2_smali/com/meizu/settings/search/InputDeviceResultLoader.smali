.class public Lcom/meizu/settings/search/InputDeviceResultLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "InputDeviceResultLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/Set<",
        "+",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;>;"
    }
.end annotation


# static fields
.field static final PHYSICAL_KEYBOARD_FRAGMENT:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final VIRTUAL_KEYBOARD_FRAGMENT:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhysicalKeyboardBreadcrumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mQuery:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

.field private mVirtualKeyboardBreadcrumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/InputDeviceResultLoader;->PHYSICAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/InputDeviceResultLoader;->VIRTUAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mQuery:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    const-string p2, "input"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mInputManager:Landroid/hardware/input/InputManager;

    const-string p2, "input_method"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private buildPhysicalKeyboardSearchResults()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120ffb

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->getPhysicalFullKeyboards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 95
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 96
    iget-object v6, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mQuery:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_32

    goto :goto_18

    .line 100
    :cond_32
    iget-object v7, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mInputManager:Landroid/hardware/input/InputManager;

    .line 101
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 103
    iget-object v7, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v4}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    if-eqz v4, :cond_4d

    .line 105
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_54

    :cond_4d
    const v4, 0x7f120a4f

    .line 106
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    :goto_54
    sget-object v7, Lcom/meizu/settings/search/InputDeviceResultLoader;->PHYSICAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    invoke-static {v1, v7, v5, v2}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->buildSubsettingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 111
    new-instance v8, Lcom/meizu/settings/search/SearchResult$Builder;

    invoke-direct {v8}, Lcom/meizu/settings/search/SearchResult$Builder;-><init>()V

    .line 112
    invoke-virtual {v8, v5}, Lcom/meizu/settings/search/SearchResult$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    new-instance v9, Lcom/meizu/settings/search/ResultPayload;

    invoke-direct {v9, v7}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {v8, v9}, Lcom/meizu/settings/search/SearchResult$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/meizu/settings/search/InputDeviceResultLoader;->PHYSICAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v5, v7, v9

    .line 114
    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/meizu/settings/search/SearchResult$Builder;->setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 115
    invoke-virtual {v8, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 116
    invoke-virtual {v8, v6}, Lcom/meizu/settings/search/SearchResult$Builder;->setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 117
    invoke-direct {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->getPhysicalKeyboardBreadCrumb()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 118
    invoke-virtual {v8}, Lcom/meizu/settings/search/SearchResult$Builder;->build()Lcom/meizu/settings/search/SearchResult;

    move-result-object v4

    .line 111
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_91
    return-object v0
.end method

.method private buildVirtualKeyboardSearchResults()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200eb

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 129
    iget-object v5, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v4}, Lcom/meizu/settings/search/InputDeviceResultLoader;->getAllSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v1, v4}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v6

    .line 132
    iget-object v7, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mQuery:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_47

    .line 134
    iget-object v7, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mQuery:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_47
    if-ne v7, v8, :cond_4a

    goto :goto_1a

    .line 139
    :cond_4a
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 140
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 142
    sget-object v8, Lcom/meizu/settings/search/InputDeviceResultLoader;->VIRTUAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    invoke-static {v1, v8, v4, v2}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->buildSubsettingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 144
    new-instance v9, Lcom/meizu/settings/search/SearchResult$Builder;

    invoke-direct {v9}, Lcom/meizu/settings/search/SearchResult$Builder;-><init>()V

    .line 145
    invoke-virtual {v9, v5}, Lcom/meizu/settings/search/SearchResult$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 146
    invoke-virtual {v9, v6}, Lcom/meizu/settings/search/SearchResult$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 147
    invoke-virtual {v9, v7}, Lcom/meizu/settings/search/SearchResult$Builder;->setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/meizu/settings/search/InputDeviceResultLoader;->VIRTUAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 148
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->getVirtualKeyboardBreadCrumb()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;

    new-instance v4, Lcom/meizu/settings/search/ResultPayload;

    invoke-direct {v4, v8}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {v9, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 151
    invoke-virtual {v9}, Lcom/meizu/settings/search/SearchResult$Builder;->build()Lcom/meizu/settings/search/SearchResult;

    move-result-object v4

    .line 144
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_98
    return-object v0
.end method

.method private static getAllSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    .line 195
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v1
.end method

.method private getPhysicalFullKeyboards()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    if-eqz v0, :cond_29

    .line 181
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    aget v3, v0, v2

    .line 182
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 183
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 184
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    return-object p0
.end method

.method private getPhysicalKeyboardBreadCrumb()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mPhysicalKeyboardBreadcrumb:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 158
    :cond_a
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    sget-object v2, Lcom/meizu/settings/search/InputDeviceResultLoader;->PHYSICAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    const v3, 0x7f120ffb

    .line 161
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/settings/search/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mPhysicalKeyboardBreadcrumb:Ljava/util/List;

    .line 163
    :cond_1f
    iget-object p0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mPhysicalKeyboardBreadcrumb:Ljava/util/List;

    return-object p0
.end method

.method private getVirtualKeyboardBreadCrumb()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mVirtualKeyboardBreadcrumb:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 169
    :cond_a
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    sget-object v2, Lcom/meizu/settings/search/InputDeviceResultLoader;->VIRTUAL_KEYBOARD_FRAGMENT:Ljava/lang/String;

    const v3, 0x7f1200eb

    .line 172
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/settings/search/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mVirtualKeyboardBreadcrumb:Ljava/util/List;

    .line 174
    :cond_1f
    iget-object p0, p0, Lcom/meizu/settings/search/InputDeviceResultLoader;->mVirtualKeyboardBreadcrumb:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->loadInBackground()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->buildPhysicalKeyboardSearchResults()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-direct {p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;->buildVirtualKeyboardSearchResults()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 49
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/InputDeviceResultLoader;->onDiscardResult(Ljava/util/Set;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

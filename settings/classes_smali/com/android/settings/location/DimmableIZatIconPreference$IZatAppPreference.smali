.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IZatAppPreference"
.end annotation


# instance fields
.field private mChecked:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$000()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 133
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$100()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;-><init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)V

    .line 132
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    :try_start_1a
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$400()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$500()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1a .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;Z)Z
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    .line 160
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 161
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    if-nez p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :goto_11
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$300(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    return-void
.end method

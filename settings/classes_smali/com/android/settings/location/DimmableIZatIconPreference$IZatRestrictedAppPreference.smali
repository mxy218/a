.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;
.super Lcom/android/settings/widget/RestrictedAppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IZatRestrictedAppPreference"
.end annotation


# instance fields
.field private mChecked:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$000()Ldalvik/system/DexClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 170
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$100()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;-><init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)V

    .line 169
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 187
    :try_start_1a
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$400()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 188
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$500()Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_3c} :catch_3d
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1a .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V
    .registers 4

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;Z)Z
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 198
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

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

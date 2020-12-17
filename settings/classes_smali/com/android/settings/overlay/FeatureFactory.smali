.class public abstract Lcom/android/settings/overlay/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FeatureFactory"

.field protected static sAppContext:Landroid/content/Context;

.field protected static sFactory:Lcom/android/settings/overlay/FeatureFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;
    .registers 3

    .line 63
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    if-eqz v0, :cond_5

    return-object v0

    .line 66
    :cond_5
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    :cond_f
    const v0, 0x7f12053f

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 76
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/overlay/FeatureFactory;

    sput-object p0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;
    :try_end_2c
    .catch Ljava/lang/InstantiationException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_2c} :catch_2f

    .line 82
    sget-object p0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    return-object p0

    :catch_2f
    move-exception p0

    .line 78
    new-instance v0, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;

    invoke-direct {v0, p0}, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_36
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
.end method

.method public abstract getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
.end method

.method public abstract getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
.end method

.method public abstract getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
.end method

.method public abstract getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
.end method

.method public abstract getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;
.end method

.method public abstract getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
.end method

.method public abstract getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
.end method

.method public abstract getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
.end method

.method public abstract getFlymeDashboardFeatureProvider(Landroid/content/Context;)Lcom/meizu/settings/dashboard/DashboardFeatureProvider;
.end method

.method public abstract getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;
.end method

.method public abstract getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
.end method

.method public abstract getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.end method

.method public abstract getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;
.end method

.method public abstract getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.end method

.method public abstract getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
.end method

.method public abstract getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
.end method

.method public abstract getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
.end method

.method public abstract getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.end method

.method public abstract getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
.end method

.method public abstract getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
.end method

.method public abstract getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
.end method

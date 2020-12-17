.class public final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final phenotypeHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->phenotypeHelperProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;"
        }
    .end annotation

    .line 95
    new-instance v9, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;"
        }
    .end annotation

    .line 75
    new-instance v9, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    .line 76
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/slice/Clock;

    .line 77
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    .line 78
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/assist/PhenotypeHelper;

    .line 79
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 80
    invoke-static {p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 81
    invoke-static {p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    .line 82
    invoke-static/range {p6 .. p6}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    .line 83
    invoke-static/range {p7 .. p7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;-><init>(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/PhenotypeHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .registers 9

    .line 55
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->phenotypeHelperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method

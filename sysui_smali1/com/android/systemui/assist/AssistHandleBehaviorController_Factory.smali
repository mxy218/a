.class public final Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;
.super Ljava/lang/Object;
.source "AssistHandleBehaviorController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final behaviorMapProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
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

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
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

.field private final screenDecorationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->phenotypeHelperProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->behaviorMapProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->dumpControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;"
        }
    .end annotation

    .line 98
    new-instance v9, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;"
        }
    .end annotation

    .line 77
    new-instance v9, Lcom/android/systemui/assist/AssistHandleBehaviorController;

    .line 78
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 79
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/app/AssistUtils;

    .line 80
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Handler;

    .line 82
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/assist/PhenotypeHelper;

    .line 83
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 84
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 85
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/DumpController;

    move-object v0, v9

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/assist/AssistHandleBehaviorController;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/PhenotypeHelper;Ljava/util/Map;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/DumpController;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleBehaviorController;
    .registers 9

    .line 56
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->screenDecorationsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->phenotypeHelperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->behaviorMapProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->dumpControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->get()Lcom/android/systemui/assist/AssistHandleBehaviorController;

    move-result-object p0

    return-object p0
.end method

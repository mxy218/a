.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:F

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$1:F

    iput-boolean p3, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget v1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$1:F

    iget-boolean p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$dMl_i-5aLm6UXcbb7W1OvCrMhAM;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setNavBarButtonAlpha$4$OverviewProxyService$1(FZ)V

    return-void
.end method

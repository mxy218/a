.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tM0ScuR2E6sp4f29_cYFeTNI-IA;->f$1:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantGestureCompletion$6$OverviewProxyService$1(F)V

    return-void
.end method

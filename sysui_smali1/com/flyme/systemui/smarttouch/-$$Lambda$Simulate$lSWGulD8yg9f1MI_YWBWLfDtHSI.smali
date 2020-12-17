.class public final synthetic Lcom/flyme/systemui/smarttouch/-$$Lambda$Simulate$lSWGulD8yg9f1MI_YWBWLfDtHSI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/-$$Lambda$Simulate$lSWGulD8yg9f1MI_YWBWLfDtHSI;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/-$$Lambda$Simulate$lSWGulD8yg9f1MI_YWBWLfDtHSI;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->lambda$expandTask$0(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

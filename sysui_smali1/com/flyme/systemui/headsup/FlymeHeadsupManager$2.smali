.class Lcom/flyme/systemui/headsup/FlymeHeadsupManager$2;
.super Ljava/lang/Object;
.source "FlymeHeadsupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$2;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$2;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->hidePopNotificationView()V

    return-void
.end method

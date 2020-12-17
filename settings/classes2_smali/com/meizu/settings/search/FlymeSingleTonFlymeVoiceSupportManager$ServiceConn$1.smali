.class Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$1;
.super Ljava/lang/Object;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$1;->this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$1;->this$1:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-static {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$200(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V

    return-void
.end method

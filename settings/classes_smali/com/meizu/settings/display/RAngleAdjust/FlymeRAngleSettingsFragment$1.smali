.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;
.super Ljava/lang/Object;
.source "FlymeRAngleSettingsFragment.java"

# interfaces
.implements Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-static {v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->handleNetworkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V

    if-eqz p3, :cond_10

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V

    :cond_10
    return-void
.end method

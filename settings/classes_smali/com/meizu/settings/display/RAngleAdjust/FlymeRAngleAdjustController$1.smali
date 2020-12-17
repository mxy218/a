.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustController.java"

# interfaces
.implements Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromNetwork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Ljava/lang/String;)V
    .registers 3

    .line 189
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 4
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

    if-eqz p3, :cond_e

    .line 193
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-static {p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "r_angle_app_list_on_network"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    :cond_e
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$1;->val$pkgName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Ljava/lang/String;)V

    return-void
.end method

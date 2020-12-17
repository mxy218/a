.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustController.java"

# interfaces
.implements Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->refreshRAngleAppListFromNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

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

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->handleNetworkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V

    if-eqz p3, :cond_1a

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p3, "last_fetch_time"

    .line 242
    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 243
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1a
    return-void
.end method

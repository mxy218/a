.class Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;
.super Ljava/lang/Object;
.source "FlymeServiceInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->safeOnBack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$700(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 508
    :cond_9
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

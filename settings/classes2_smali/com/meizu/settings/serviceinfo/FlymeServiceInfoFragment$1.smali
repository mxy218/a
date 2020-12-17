.class Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$1;
.super Ljava/lang/Object;
.source "FlymeServiceInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->setSN()Z
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

    .line 483
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 487
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;->access$600(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120929

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    return-void
.end method

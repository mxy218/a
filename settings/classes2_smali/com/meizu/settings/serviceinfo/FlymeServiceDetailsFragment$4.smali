.class Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;
.super Ljava/lang/Object;
.source "FlymeServiceDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 668
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$002(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Z)Z

    .line 669
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1400(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    .line 670
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120518

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    .line 671
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$4;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$1500(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;Z)V

    return-void
.end method

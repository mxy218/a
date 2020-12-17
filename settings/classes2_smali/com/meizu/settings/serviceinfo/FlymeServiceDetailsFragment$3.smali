.class Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;
.super Ljava/lang/Object;
.source "FlymeServiceDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->showCancelDialog()V
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

    .line 126
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 131
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$200(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$300(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$3;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

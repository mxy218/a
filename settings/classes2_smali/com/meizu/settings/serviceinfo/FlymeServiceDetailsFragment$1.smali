.class Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;
.super Ljava/lang/Object;
.source "FlymeServiceDetailsFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;
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

    .line 110
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->access$100(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

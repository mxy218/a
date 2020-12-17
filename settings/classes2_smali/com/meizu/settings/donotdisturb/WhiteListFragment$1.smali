.class Lcom/meizu/settings/donotdisturb/WhiteListFragment$1;
.super Ljava/lang/Object;
.source "WhiteListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/WhiteListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$1;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$1;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$300(Lcom/meizu/settings/donotdisturb/WhiteListFragment;I)V

    return-void
.end method

.class Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->commit()V

    .line 92
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onAnimationEnd()V

    return-void
.end method

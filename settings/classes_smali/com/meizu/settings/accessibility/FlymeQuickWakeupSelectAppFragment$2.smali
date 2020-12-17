.class Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$2;
.super Ljava/lang/Object;
.source "FlymeQuickWakeupSelectAppFragment.java"

# interfaces
.implements Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckChanged(Z)V
    .registers 3

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$2;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$700(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;ZZ)V

    return-void
.end method

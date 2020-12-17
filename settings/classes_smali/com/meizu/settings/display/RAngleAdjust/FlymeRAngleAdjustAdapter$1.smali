.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->initItemView(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;

.field final synthetic val$item:Lcom/meizu/settings/widget/MzAppEntry;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;Lcom/meizu/settings/widget/MzAppEntry;Ljava/lang/String;)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    iput-object p3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    const/4 p1, 0x1

    if-nez p2, :cond_14

    .line 134
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsRAngleAdjust:Z

    .line 135
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;

    invoke-static {p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p2

    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0, v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setRAngleUnadustOpened(Ljava/lang/String;ZZ)V

    goto :goto_23

    .line 137
    :cond_14
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    iput-boolean p1, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsRAngleAdjust:Z

    .line 138
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;

    invoke-static {p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p2

    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setRAngleUnadustOpened(Ljava/lang/String;ZZ)V

    :goto_23
    return-void
.end method

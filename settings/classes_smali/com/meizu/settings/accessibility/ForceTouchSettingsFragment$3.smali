.class Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;
.super Ljava/lang/Object;
.source "ForceTouchSettingsFragment.java"

# interfaces
.implements Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->initForceTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field detailFragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

.field final synthetic this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 257
    sget-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initForceTouch cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$500(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public onPeekMenuItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onPulldownViewChanged()V
    .registers 2

    .line 265
    sget-object p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "initForceTouch onPulldownViewChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public peek(Landroid/view/MotionEvent;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
    .registers 11

    .line 204
    sget-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initForceTouch peek "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    .line 207
    invoke-static {v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$300(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getForceTouchViewFromViewGroup(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$400(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    .line 209
    sget-object p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string p1, "initForceTouch,peek do not locate on iamge,return"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_22
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 214
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, v0, v1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v0, v0, v4

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-direct {v2, v3, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    iput-object v2, p2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    .line 218
    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    .line 220
    new-instance p1, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

    invoke-direct {p1}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->access$500(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/app/FragmentManager;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0a03da

    .line 223
    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v3, 0x0

    .line 224
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 225
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 226
    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->detailFragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

    .line 228
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->this$0:Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2, v1, v1, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    iput-object v2, p2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekRect:Landroid/graphics/Rect;

    .line 233
    new-instance v1, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3$1;-><init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v4
.end method

.method public pop(Landroid/view/View;)Z
    .registers 3

    .line 193
    sget-object p1, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "initForceTouch pop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;->detailFragment:Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;

    if-eqz p0, :cond_e

    .line 196
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->setPopState()V

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

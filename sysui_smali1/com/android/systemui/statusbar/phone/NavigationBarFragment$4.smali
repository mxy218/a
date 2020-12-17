.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field final synthetic val$listener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .registers 3

    .line 1202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;->val$fragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;->val$listener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6

    .line 1205
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    .line 1206
    invoke-virtual {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->navigation_bar_frame:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;->val$fragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const-string v3, "NavigationBar"

    .line 1207
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1209
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;->val$listener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {p1, v3, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1214
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->removeAndDestroy(Landroid/view/View;)V

    return-void
.end method

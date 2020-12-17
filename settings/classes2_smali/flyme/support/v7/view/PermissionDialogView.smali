.class public Lflyme/support/v7/view/PermissionDialogView;
.super Landroid/widget/RelativeLayout;
.source "PermissionDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/PermissionDialogView$Builder;
    }
.end annotation


# instance fields
.field private mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/view/PermissionDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/view/PermissionDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_11

    .line 38
    new-instance p2, Lflyme/support/v7/view/PermissionViewHandlerImpl23;

    invoke-direct {p2, p1}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    goto :goto_18

    .line 40
    :cond_11
    new-instance p2, Lflyme/support/v7/view/PermissionViewHandlerImpl;

    invoke-direct {p2, p1}, Lflyme/support/v7/view/PermissionViewHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    .line 42
    :goto_18
    iget-object p1, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    invoke-interface {p1, p0}, Lflyme/support/v7/view/PermissionViewHandler;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 1

    .line 51
    iget-object p0, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    invoke-interface {p0}, Lflyme/support/v7/view/PermissionViewHandler;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    invoke-interface {p0}, Lflyme/support/v7/view/PermissionViewHandler;->getPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTermsCheckBox()Landroid/widget/CheckBox;
    .registers 1

    .line 55
    iget-object p0, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    invoke-interface {p0}, Lflyme/support/v7/view/PermissionViewHandler;->getTermsCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method public setPermissionDialogBuild(Lflyme/support/v7/view/PermissionDialogView$Builder;)V
    .registers 2

    .line 47
    iget-object p0, p0, Lflyme/support/v7/view/PermissionDialogView;->mViewHandler:Lflyme/support/v7/view/PermissionViewHandler;

    invoke-interface {p0, p1}, Lflyme/support/v7/view/PermissionViewHandler;->bindData(Lflyme/support/v7/view/PermissionDialogView$Builder;)V

    return-void
.end method

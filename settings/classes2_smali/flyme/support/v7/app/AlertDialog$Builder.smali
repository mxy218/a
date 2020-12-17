.class public Lflyme/support/v7/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;
    }
.end annotation


# instance fields
.field private final P:Lflyme/support/v7/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 314
    invoke-static {p1, v0}, Lflyme/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lflyme/support/v7/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lflyme/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lflyme/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    .line 345
    iput p2, p0, Lflyme/support/v7/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/app/AlertDialog$Builder;)Lflyme/support/v7/app/AlertController$AlertParams;
    .registers 1

    .line 299
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    return-object p0
.end method

.method static synthetic access$100(Lflyme/support/v7/app/AlertDialog$Builder;)I
    .registers 1

    .line 299
    iget p0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->mTheme:I

    return p0
.end method


# virtual methods
.method public create()Lflyme/support/v7/app/AlertDialog;
    .registers 2

    .line 965
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/AlertDialog$Builder$1;-><init>(Lflyme/support/v7/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create(Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;)Lflyme/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public create(Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;)Lflyme/support/v7/app/AlertDialog;
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lflyme/support/v7/app/AlertDialog;",
            ">(",
            "Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v1, p0, Lflyme/support/v7/app/AlertDialog$Builder;->mTheme:I

    invoke-interface {p1, v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;->newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/AlertDialog;

    move-result-object p1

    .line 1056
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, p1, Lflyme/support/v7/app/AlertDialog;->mAlert:Lflyme/support/v7/app/AlertController;

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertController$AlertParams;->apply(Lflyme/support/v7/app/AlertController;)V

    .line 1057
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-boolean v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1058
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-boolean v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1061
    :cond_22
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1062
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1063
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object p0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_39

    .line 1064
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_39
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 358
    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object p0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 4

    .line 659
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 660
    iput-object p2, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3

    .line 582
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 445
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 6

    .line 1034
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1035
    iput-object p2, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1036
    iput-boolean p3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsListItemCenter:Z

    .line 1037
    iput-object p4, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mListItemColors:[Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setMessage(I)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 408
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 510
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 511
    iget-object p1, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 547
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 548
    iget-object p1, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3

    .line 601
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3

    .line 611
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3

    .line 621
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 473
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 474
    iget-object p1, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 367
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 377
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lflyme/support/v7/app/AlertDialog$Builder;
    .registers 3

    .line 888
    iget-object v0, p0, Lflyme/support/v7/app/AlertDialog$Builder;->P:Lflyme/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 889
    iput p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 890
    iput-boolean p1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

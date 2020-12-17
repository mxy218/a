.class public Lflyme/support/v7/view/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Lflyme/support/v7/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/view/ActionMode;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 48
    iput-object p1, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .line 79
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->finish()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 1

    .line 109
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 84
    iget-object v0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p0

    check-cast p0, Landroidx/core/internal/view/SupportMenu;

    invoke-static {v0, p0}, Lflyme/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 1

    .line 119
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    .line 99
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 1

    .line 54
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 89
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleOptionalHint()Z
    .registers 1

    .line 124
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->getTitleOptionalHint()Z

    move-result p0

    return p0
.end method

.method public invalidate()V
    .registers 1

    .line 74
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->invalidate()V

    return-void
.end method

.method public isTitleOptional()Z
    .registers 1

    .line 134
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->isTitleOptional()Z

    move-result p0

    return p0
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2

    .line 114
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 2

    .line 104
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setSubtitle(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 2

    .line 94
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 64
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2

    .line 129
    iget-object p0, p0, Lflyme/support/v7/view/SupportActionModeWrapper;->mWrappedObject:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    return-void
.end method

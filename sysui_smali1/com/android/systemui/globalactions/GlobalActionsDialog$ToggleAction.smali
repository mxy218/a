.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1215
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    .line 1216
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    .line 1217
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    .line 1218
    iput p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1219
    iput p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1293
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_7
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 10

    .line 1237
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->willCreate()V

    const/4 p2, 0x0

    const v0, 0x1090076

    .line 1239
    invoke-virtual {p4, v0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const p4, 0x1020006

    .line 1242
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    const v0, 0x102000b

    .line 1243
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x102045d

    .line 1244
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1245
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_38

    .line 1248
    iget v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mMessageResId:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1249
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1250
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1253
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v0, v4, :cond_44

    sget-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v0, v4, :cond_43

    goto :goto_44

    :cond_43
    move v3, p2

    :cond_44
    :goto_44
    if-eqz p4, :cond_57

    if-eqz v3, :cond_4b

    .line 1256
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    goto :goto_4d

    :cond_4b
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledIconResid:I

    .line 1255
    :goto_4d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_57
    if-eqz v1, :cond_69

    if-eqz v3, :cond_5e

    .line 1261
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_60

    :cond_5e
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    :goto_60
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 1262
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1263
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1265
    :cond_69
    invoke-virtual {p3, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object p3
.end method

.method public isEnabled()Z
    .registers 1

    .line 1282
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onPress()V
    .registers 3

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "GlobalActionsDialog"

    const-string/jumbo v0, "shouldn\'t be able to toggle when in transition"

    .line 1272
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1276
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1277
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->onToggle(Z)V

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->changeStateFromPress(Z)V

    return-void
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V
    .registers 2

    .line 1299
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .registers 1

    return-void
.end method

.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
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
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    .line 1105
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    const/4 p1, 0x0

    .line 1106
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1107
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    const/4 p1, 0x0

    .line 1112
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    .line 1113
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1114
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 8

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->getActionLayoutId(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    .line 1144
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    .line 1145
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1146
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x102045d

    .line 1148
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1149
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    :cond_36
    const/16 v1, 0x8

    .line 1153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    :goto_3b
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    .line 1156
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_53

    .line 1158
    :cond_48
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    if-eqz v0, :cond_53

    .line 1159
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5b

    .line 1162
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 1164
    :cond_5b
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_60
    return-object p2
.end method

.method protected getActionLayoutId(Landroid/content/Context;)I
    .registers 2

    .line 1136
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid_item:I

    return p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onPress()V
.end method

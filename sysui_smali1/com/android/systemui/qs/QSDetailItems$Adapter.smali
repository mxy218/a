.class Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$1;)V
    .registers 3

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object p0

    array-length p0, p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 209
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p2}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$layout;->qs_detail_item_ext:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 213
    :cond_1b
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3b

    .line 214
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/android/systemui/R$dimen;->qs_detail_item_padding_landscape:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_47

    .line 215
    :cond_3b
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/android/systemui/R$dimen;->qs_detail_item_padding:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 216
    :goto_47
    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 p3, 0x1

    .line 217
    invoke-virtual {p2, p3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailItems;->access$300(Lcom/android/systemui/qs/QSDetailItems;)Z

    move-result v2

    if-eqz v2, :cond_58

    move v2, v0

    goto :goto_59

    :cond_58
    const/4 v2, 0x4

    :goto_59
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x1020006

    .line 220
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 221
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v3, :cond_75

    .line 222
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7a

    .line 224
    :cond_75
    iget v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_7a
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_81

    .line 228
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_81
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-nez v3, :cond_90

    iget v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    if-nez v3, :cond_90

    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8e

    goto :goto_90

    :cond_8e
    move v3, v0

    goto :goto_91

    :cond_90
    :goto_90
    move v3, p3

    :goto_91
    const/16 v4, 0x8

    if-eqz v3, :cond_97

    move v3, v0

    goto :goto_98

    :cond_97
    move v3, v4

    .line 231
    :goto_98
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->clear()V

    .line 234
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_bc

    .line 237
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v3, v0, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_bc
    const v2, 0x1020016

    .line 241
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 242
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x1020010

    .line 243
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, p3

    if-eqz v5, :cond_dd

    goto :goto_de

    :cond_dd
    move p3, v1

    .line 245
    :goto_de
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    const p3, -0x19000001

    .line 247
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget p3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->rightIcon:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_free:I

    const/4 v6, 0x0

    if-ne p3, v1, :cond_110

    .line 250
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$string;->free_wifi_label:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 251
    new-instance v1, Lcom/flyme/systemui/qs/FreeWifiDrawable;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v7}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7, p3}, Lcom/flyme/systemui/qs/FreeWifiDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_136

    .line 252
    :cond_110
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_133

    .line 253
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$string;->bluetooth_accessory_label:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 254
    new-instance v1, Lcom/flyme/systemui/qs/FreeWifiDrawable;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v7}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7, p3}, Lcom/flyme/systemui/qs/FreeWifiDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_136

    .line 256
    :cond_133
    invoke-virtual {v2, v0, v0, p3, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 258
    :goto_136
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$400(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    if-eqz v5, :cond_143

    move p3, v0

    goto :goto_144

    :cond_143
    move p3, v4

    .line 260
    :goto_144
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_14b

    .line 261
    iget-object v6, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    :cond_14b
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance p3, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x1020008

    .line 271
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 294
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz p1, :cond_164

    goto :goto_165

    :cond_164
    move v0, v4

    :goto_165
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

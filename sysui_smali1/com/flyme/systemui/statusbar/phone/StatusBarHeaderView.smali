.class public Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAmPm:Landroid/widget/TextView;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mClockExpandedSize:I

.field private mClockView:Lcom/android/systemui/statusbar/policy/SplitClockView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field protected mExpandedHeight:I

.field private mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

.field private mListening:Z

.field private mLunarView:Landroid/widget/TextView;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSTilesEditButton:Landroid/view/View;

.field private mSettingsButton:Landroid/view/View;

.field private mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-object p3, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private getClockLeftMargin(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 189
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->split_clock_left_margin_landscape:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 191
    :cond_e
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->split_clock_left_margin:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getClockTextSize(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 197
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->mz_qs_time_size_landscape:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 199
    :cond_e
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->mz_qs_time_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private isNotificationFilterPanelShowing()Z
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result p0

    return p0
.end method

.method private loadDimens()V
    .registers 3

    .line 204
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 206
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getClockTextSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    return-void
.end method

.method private startQSTilesEditMode()V
    .registers 3

    .line 281
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1d

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 286
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectShortcutSetting(Landroid/content/Context;)V

    .line 291
    :cond_18
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    :cond_1d
    return-void
.end method

.method private startSettingsActivity()V
    .registers 3

    .line 276
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAmPmTranslation()V
    .registers 4

    .line 262
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 263
    :goto_a
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    mul-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaleX()F

    move-result p0

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method private updateClockScale()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 255
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 256
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 258
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method private updateHeights()V
    .registers 4

    .line 245
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 246
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 247
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_f

    .line 248
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method private updateVisibilities()V
    .registers 6

    .line 117
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v3

    :goto_e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    if-eqz v0, :cond_17

    move v4, v3

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v3

    :goto_22
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mLunarView:Landroid/widget/TextView;

    if-nez v0, :cond_35

    .line 122
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isNotChineseLanguage()Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_35
    move v2, v3

    .line 121
    :cond_36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateWidths()V
    .registers 4

    .line 343
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result v0

    .line 344
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 345
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_19

    .line 346
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .registers 2

    return-void
.end method

.method public getExpandedHeight()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    return p0
.end method

.method public getExpandedHeight(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 211
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->status_bar_header_height_landscape:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 213
    :cond_e
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->status_bar_header_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getShowFilterPanelImageButton()Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 269
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    goto :goto_f

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    if-ne p1, v0, :cond_f

    .line 271
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->startQSTilesEditMode()V

    :cond_f
    :goto_f
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 137
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 139
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size_landscape:I

    goto :goto_f

    :cond_d
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size:I

    .line 138
    :goto_f
    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 140
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mLunarView:Landroid/widget/TextView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1b

    .line 141
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size_landscape:I

    goto :goto_1d

    :cond_1b
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size:I

    .line 140
    :goto_1d
    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const v0, 0x1020016

    .line 142
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_header_text_size:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x1020017

    .line 143
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_header_text_size:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 144
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_39

    .line 145
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size_landscape:I

    goto :goto_3b

    :cond_39
    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_collapsed_size:I

    .line 144
    :goto_3b
    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 146
    sget v0, Lcom/android/systemui/R$id;->empty_time_view:I

    sget v1, Lcom/android/systemui/R$dimen;->qs_time_expanded_size:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_qs_date_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 156
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getClockTextSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 157
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->ic_settings_entrance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 159
    sget v4, Lcom/android/systemui/R$drawable;->qs_tiles_edit:I

    goto :goto_85

    :cond_83
    sget v4, Lcom/android/systemui/R$drawable;->qs_tiles_normal:I

    .line 158
    :goto_85
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 162
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockView:Lcom/android/systemui/statusbar/policy/SplitClockView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getClockLeftMargin(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 164
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockView:Lcom/android/systemui/statusbar/policy/SplitClockView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_bd

    .line 168
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_end_landscape:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_c7

    .line 169
    :cond_bd
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_c7
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_d8

    .line 171
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_top_landscape:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_e2

    .line 172
    :cond_d8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_e2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 173
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_100

    .line 177
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_top_landscape:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_10a

    .line 178
    :cond_100
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->filter_icon_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_10a
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 179
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_11b

    .line 180
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_button_margin_right_landscape:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_125

    .line 181
    :cond_11b
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_button_margin_right:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_125
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 182
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 95
    sget v0, Lcom/android/systemui/R$id;->date_group:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->time_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/android/systemui/R$id;->am_pm_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->date_expanded:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->lunar_date:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mLunarView:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v0, Lcom/android/systemui/R$id;->show_filter_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->qs_tiles_edit_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v0, Lcom/android/systemui/R$id;->header_carrier_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitClockView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mClockView:Lcom/android/systemui/statusbar/policy/SplitClockView;

    .line 109
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 110
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 111
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 113
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->refreshFont()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public refreshFont()V
    .registers 3

    .line 325
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    goto :goto_26

    :cond_b
    const-string/jumbo v0, "system/fonts/SFDINCondensed-Bold.otf"

    .line 329
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 331
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    .line 332
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    .line 333
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mLunarView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    :goto_26
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .registers 2

    return-void
.end method

.method public setFilterPanel(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    .line 226
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 229
    :cond_5
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 297
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_d

    .line 299
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setTilesEditButton(Landroid/widget/ImageView;)V

    :cond_d
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateEverything()V
    .registers 1

    .line 236
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    .line 237
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 239
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateWidths()V

    .line 240
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    return-void
.end method

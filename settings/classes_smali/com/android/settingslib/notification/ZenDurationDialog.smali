.class public Lcom/android/settingslib/notification/ZenDurationDialog;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    }
.end annotation


# static fields
.field protected static final ALWAYS_ASK_CONDITION_INDEX:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final MAX_BUCKET_MINUTES:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MINUTE_BUCKETS:[I

.field protected static final MIN_BUCKET_MINUTES:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private MAX_MANUAL_DND_OPTIONS:I

.field protected mBucketIndex:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    .line 48
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    .line 49
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    const/16 v1, 0x3c

    .line 51
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindTag(ILandroid/view/View;I)V
    .registers 6

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    goto :goto_12

    .line 178
    :cond_d
    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {v0}, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;-><init>()V

    .line 179
    :goto_12
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v1, :cond_23

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    :cond_23
    if-gtz p1, :cond_2e

    .line 187
    sget-object p1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    sget v1, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    aget p1, p1, v1

    iput p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    goto :goto_30

    .line 189
    :cond_2e
    iput p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 192
    :goto_30
    iget-object p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog$2;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    return-void
.end method

.method private setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V
    .registers 4

    .line 211
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_d

    const v0, 0x1020002

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    .line 215
    :cond_d
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v0, :cond_1c

    const v0, 0x1020014

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    :cond_1c
    const v0, 0x1020015

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object p2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/notification/ZenDurationDialog$3;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .registers 10

    const v0, 0x1020019

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$4;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a

    .line 241
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 242
    new-instance v2, Lcom/android/settingslib/notification/ZenDurationDialog$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$5;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget p0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v2, p0

    const/4 p0, 0x1

    if-ne p3, p0, :cond_63

    const/4 p2, 0x0

    .line 251
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    sget p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-lez p3, :cond_38

    move p3, p0

    goto :goto_39

    :cond_38
    move p3, p2

    :goto_39
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 255
    iget p1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    sget p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    if-eq p1, p3, :cond_43

    goto :goto_44

    :cond_43
    move p0, p2

    :goto_44
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 257
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    const/high16 p2, 0x3f000000  # 0.5f

    if-eqz p0, :cond_53

    move p0, p1

    goto :goto_54

    :cond_53
    move p0, p2

    :goto_54
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 258
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_5e

    goto :goto_5f

    :cond_5e
    move p1, p2

    :goto_5f
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_6b

    :cond_63
    const/16 p0, 0x8

    .line 260
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6b
    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .registers 3

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupDialog(Landroid/app/AlertDialog$Builder;)V

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 206
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    return-object p0
.end method

.method protected getContentView()Landroid/view/View;
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_11

    .line 134
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->zen_mode_duration_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    sget v1, Lcom/android/settingslib/R$id;->zen_duration_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 140
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 141
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    move v2, v1

    .line 143
    :goto_38
    iget v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v2, v3, :cond_66

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_radio_button:I

    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_condition:I

    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 151
    iget v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 152
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_66
    return-object v0
.end method

.method protected onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;ZI)V
    .registers 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 295
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    array-length v0, v0

    .line 296
    iget v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3c

    .line 298
    iget v1, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v5, v1

    :goto_d
    if-ge v2, v0, :cond_2e

    if-eqz p3, :cond_13

    move v1, v2

    goto :goto_16

    :cond_13
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, v2

    .line 301
    :goto_16
    sget-object v7, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    aget v7, v7, v1

    if-eqz p3, :cond_21

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gtz v8, :cond_28

    :cond_21
    if-nez p3, :cond_2b

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gez v8, :cond_2b

    .line 303
    :cond_28
    iput v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    goto :goto_2f

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2e
    move v7, v3

    :goto_2f
    if-ne v7, v3, :cond_51

    .line 309
    sget p3, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    iput p3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 310
    sget-object p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v7, p3, v0

    goto :goto_51

    :cond_3c
    sub-int/2addr v0, v4

    if-eqz p3, :cond_40

    move v3, v4

    :cond_40
    add-int/2addr v1, v3

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 315
    sget-object p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v7, p3, v0

    .line 317
    :cond_51
    :goto_51
    iput v7, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 318
    invoke-direct {p0, v7, p1, p4}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 319
    iget-object p0, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setupDialog(Landroid/app/AlertDialog$Builder;)V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_duration"

    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    sget v1, Lcom/android/settingslib/R$string;->zen_mode_duration_settings_title:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->cancel:I

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->okay:I

    new-instance v3, Lcom/android/settingslib/notification/ZenDurationDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog$1;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;I)V

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupRadioButtons(I)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setupRadioButtons(I)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_7

    move v3, v0

    goto :goto_c

    :cond_7
    if-lez p1, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    .line 167
    :goto_c
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method protected updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 267
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_7

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V

    .line 271
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    if-eqz p3, :cond_2e

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1e

    const/4 p2, 0x2

    if-eq p3, p2, :cond_15

    const-string p0, ""

    goto :goto_36

    .line 284
    :cond_15
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/R$string;->zen_mode_duration_always_prompt_title:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    .line 279
    :cond_1e
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    iget p2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 280
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    const/4 v0, 0x0

    .line 279
    invoke-static {p0, p2, p3, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p0

    .line 281
    iget-object p0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_36

    .line 276
    :cond_2e
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/R$string;->zen_mode_forever:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 289
    :goto_36
    iget-object p1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateZenDuration(I)V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "zen_duration"

    .line 99
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_35

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    move v2, v1

    goto :goto_3c

    :cond_1e
    const/4 v2, -0x1

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x540

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_3c

    .line 110
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object v0

    .line 111
    iget v2, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x53e

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_3c

    .line 105
    :cond_35
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x53f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_3c
    if-eq p1, v2, :cond_47

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_47
    return-void
.end method

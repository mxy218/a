.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveUi"

.field private static final THEME_ID_DARK:I = 0x10303de

.field private static final THEME_ID_LIGHT:I = 0x10303e6


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mThemeId:I

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
    .registers 30

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 159
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "SaveUi"

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nightMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_31
    if-eqz v2, :cond_37

    const v2, 0x10303de

    goto :goto_3a

    :cond_37
    const v2, 0x10303e6

    :goto_3a
    iput v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 161
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 162
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v3, p10

    invoke-direct {v2, v0, v3}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 163
    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 164
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 165
    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 166
    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 168
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    move-object/from16 v5, p1

    invoke-direct {v2, v5, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 169
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 170
    const v5, 0x109003f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 172
    const v5, 0x10201d0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 174
    new-instance v7, Landroid/util/ArraySet;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 175
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v9

    .line 177
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_8f

    .line 178
    const v10, 0x10400df

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_8f
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_9d

    .line 181
    const v10, 0x10400dc

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_9d
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_ab

    .line 184
    const v10, 0x10400dd

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_ab
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_b9

    .line 187
    const v10, 0x10400e0

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_b9
    and-int/lit8 v10, v9, 0x10

    if-eqz v10, :cond_c7

    .line 190
    const v10, 0x10400de

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_c7
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v10, v12, :cond_13f

    if-eq v10, v11, :cond_11a

    if-eq v10, v8, :cond_ee

    .line 214
    nop

    .line 215
    if-eqz p12, :cond_db

    const v7, 0x10400e6

    goto :goto_de

    .line 216
    :cond_db
    const v7, 0x10400d8

    :goto_de
    new-array v8, v12, [Ljava/lang/Object;

    aput-object p3, v8, v13

    .line 215
    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static {v7, v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_15e

    .line 207
    :cond_ee
    nop

    .line 208
    if-eqz p12, :cond_f5

    const v10, 0x10400e8

    goto :goto_f8

    .line 209
    :cond_f5
    const v10, 0x10400da

    :goto_f8
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v14, v13

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v14, v11

    aput-object p3, v14, v8

    .line 207
    invoke-virtual {v2, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 211
    goto :goto_15e

    .line 201
    :cond_11a
    nop

    .line 202
    if-eqz p12, :cond_121

    const v10, 0x10400e7

    goto :goto_124

    .line 203
    :cond_121
    const v10, 0x10400d9

    :goto_124
    new-array v8, v8, [Ljava/lang/Object;

    .line 204
    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v8, v13

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v8, v12

    aput-object p3, v8, v11

    .line 201
    invoke-virtual {v2, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 205
    goto :goto_15e

    .line 195
    :cond_13f
    nop

    .line 196
    if-eqz p12, :cond_146

    const v8, 0x10400e9

    goto :goto_149

    .line 197
    :cond_146
    const v8, 0x10400db

    :goto_149
    new-array v10, v11, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v10, v13

    aput-object p3, v10, v12

    .line 195
    invoke-virtual {v2, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 199
    nop

    .line 219
    :goto_15e
    iget-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v5, p4

    invoke-direct {v0, v2, v3, v5}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 223
    nop

    .line 224
    move-object/from16 v5, p8

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v5

    .line 225
    const/4 v7, -0x1

    if-eqz v5, :cond_17f

    .line 226
    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 227
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1d2

    const-string/jumbo v5, "on constructor: applied custom description"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d2

    .line 229
    :cond_17f
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 230
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1ad

    .line 231
    const/16 v5, 0x46b

    invoke-direct {v0, v5, v9}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 232
    const v5, 0x10201cd

    .line 233
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 234
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    iget-object v8, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v7, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    :cond_1ad
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1d2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on constructor: title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", subTitle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1d2
    :goto_1d2
    const v4, 0x10201cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v5

    if-ne v5, v12, :cond_1e8

    .line 246
    const v5, 0x104064e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1ee

    .line 248
    :cond_1e8
    const v5, 0x10400d7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_1ee
    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;

    invoke-direct {v5, v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v1, 0x10201d1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    if-eqz p12, :cond_207

    .line 254
    const v4, 0x10400ea

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 256
    :cond_207
    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v1, Landroid/app/Dialog;

    iget v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-direct {v1, v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 259
    iget-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 263
    iget-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;

    invoke-direct {v3, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    iget-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 266
    const/16 v3, 0x7f6

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 267
    const v3, 0x60020

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 270
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 271
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    const/16 v3, 0x51

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 273
    invoke-virtual {v1, v12}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 274
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 275
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    const v3, 0x10400d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 277
    const v2, 0x1030312

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 280
    return-void
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .registers 20

    .line 284
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v3

    .line 285
    const/4 v4, 0x0

    if-nez v3, :cond_d

    .line 286
    return v4

    .line 288
    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v5

    .line 289
    const/16 v6, 0x469

    invoke-direct {p0, v6, v5}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 291
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v6

    .line 292
    const-string v7, "SaveUi"

    if-nez v6, :cond_24

    .line 293
    const-string v0, "No remote view on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v4

    .line 298
    :cond_24
    nop

    .line 299
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v8

    .line 300
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_41

    .line 301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyCustomDescription(): transformations = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_41
    if-eqz v8, :cond_4f

    .line 304
    invoke-static {v2, v6, v8}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 305
    const-string v0, "could not apply main transformations on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v4

    .line 310
    :cond_4f
    new-instance v8, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;

    invoke-direct {v8, p0, v5}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;-><init>(Lcom/android/server/autofill/ui/SaveUi;I)V

    .line 345
    const/4 v5, 0x0

    :try_start_55
    iget v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {v6, v1, v5, v8, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0

    .line 349
    nop

    .line 350
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v5

    .line 351
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_80

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyCustomDescription(): view = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " updates="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_80} :catch_1dd

    .line 355
    :cond_80
    const-string v8, "custom description has "

    if-eqz v5, :cond_146

    .line 356
    :try_start_84
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 357
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_a3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " batch updates"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_a3
    move v10, v4

    :goto_a4
    if-ge v10, v9, :cond_146

    .line 359
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 360
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/service/autofill/InternalValidator;

    .line 361
    if-eqz v12, :cond_12a

    invoke-virtual {v12, v2}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v12

    if-nez v12, :cond_b9

    goto :goto_12a

    .line 365
    :cond_b9
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/service/autofill/BatchUpdates;

    .line 367
    invoke-virtual {v11}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v12

    .line 368
    if-eqz v12, :cond_de

    .line 369
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_db

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Applying template updates for batch update #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_db
    invoke-virtual {v12, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 373
    :cond_de
    nop

    .line 374
    invoke-virtual {v11}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v11

    .line 375
    if-eqz v11, :cond_142

    .line 376
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_e7} :catch_1dd

    const-string v13, ": "

    if-eqz v12, :cond_105

    .line 377
    :try_start_eb
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Applying child transformation for batch update #"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_105
    invoke-static {v2, v6, v11}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_126

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not apply child transformation for batch update #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v4

    .line 386
    :cond_126
    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_142

    .line 362
    :cond_12a
    :goto_12a
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_142

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping batch update #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_142
    :goto_142
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a4

    .line 392
    :cond_146
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_1ca

    .line 394
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 395
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_16b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " actions"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_16b
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_184

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ca

    .line 400
    :cond_184
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 401
    move v5, v4

    :goto_188
    if-ge v5, v2, :cond_1ca

    .line 402
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 403
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/InternalOnClickAction;

    .line 404
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 405
    if-nez v9, :cond_1bf

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for view "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s not on "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    goto :goto_1c7

    .line 410
    :cond_1bf
    new-instance v6, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;

    invoke-direct {v6, v8, v3}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;-><init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :goto_1c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_188

    .line 421
    :cond_1ca
    :goto_1ca
    const v1, 0x10201cd

    .line 422
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 423
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 424
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_1db} :catch_1dd

    .line 425
    const/4 v0, 0x1

    return v0

    .line 426
    :catch_1dd
    move-exception v0

    .line 427
    const-string v1, "Error applying custom description. "

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    return v4
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 4

    .line 457
    const/4 v0, 0x0

    const-string v1, "SaveUi"

    if-nez p0, :cond_b

    .line 458
    const-string p0, "isValidLink(): custom description without pending intent"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v0

    .line 461
    :cond_b
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-nez p0, :cond_17

    .line 462
    const-string p0, "isValidLink(): pending intent not for activity"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v0

    .line 465
    :cond_17
    if-nez p1, :cond_1f

    .line 466
    const-string p0, "isValidLink(): no intent"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 469
    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$applyCustomDescription$4(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 411
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_27

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was clicked"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SaveUi"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_27
    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    .line 415
    return-void
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    return-object p1
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .registers 4

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x46a

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    return-object p1
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 11

    .line 433
    const v0, 0x10201ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 436
    const v0, 0x1050034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 437
    nop

    .line 438
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 439
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 441
    const-string v2, ")."

    const-string v3, "SaveUi"

    const-string/jumbo v4, "x"

    if-gt v0, p1, :cond_5b

    if-gt v1, p1, :cond_5b

    .line 442
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_57

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding service icon ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") as it\'s less than maximum ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_57
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8f

    .line 449
    :cond_5b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not adding service icon of size ("

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") because maximum is ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 454
    :goto_8f
    return-void
.end method

.method private show()V
    .registers 3

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing save dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 524
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 525
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 551
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 554
    return-void

    .line 552
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(II)V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 483
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 539
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 541
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 542
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_29

    .line 546
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    const v1, 0x10303de

    if-eq v0, v1, :cond_7c

    const v1, 0x10303e6

    if-eq v0, v1, :cond_76

    .line 577
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    .line 574
    :cond_76
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    goto :goto_82

    .line 571
    :cond_7c
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    nop

    .line 580
    :goto_82
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 582
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 584
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 585
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 586
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destroyed: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 588
    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .registers 3

    .line 528
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    .line 532
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 533
    nop

    .line 534
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 532
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method public synthetic lambda$applyCustomDescription$3$SaveUi(ILandroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 8

    .line 311
    invoke-virtual {p4, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p2

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    .line 312
    nop

    .line 313
    const/16 p4, 0x46c

    invoke-direct {p0, p4, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 317
    invoke-static {p3, p2}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result p4

    .line 318
    const/4 v0, 0x0

    if-nez p4, :cond_1f

    .line 319
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 320
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 321
    return v0

    .line 323
    :cond_1f
    sget-boolean p4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "SaveUi"

    if-eqz p4, :cond_2a

    const-string p4, "Intercepting custom description intent"

    invoke-static {v1, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2a
    iget-object p4, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p4}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object p4

    .line 325
    const-string v2, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 327
    :try_start_35
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v2, v2, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    invoke-interface {v2, p3, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 329
    iget-object p3, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 330
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p3, :cond_5e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hiding UI until restored with token "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 332
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 333
    iget-object p4, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p4, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_6a} :catch_6b

    .line 334
    return p3

    .line 335
    :catch_6b
    move-exception p3

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error triggering pending intent: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 338
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 339
    return v0
.end method

.method public synthetic lambda$new$0$SaveUi(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 3

    .line 250
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$new$1$SaveUi(Landroid/view/View;)V
    .registers 2

    .line 256
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method public synthetic lambda$new$2$SaveUi(Landroid/content/DialogInterface;)V
    .registers 3

    .line 263
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .registers 7

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_36

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): got token "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " instead of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 495
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 498
    :cond_36
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 500
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5f

    .line 512
    const/16 p2, 0xb

    :try_start_44
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore(): invalid operation "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 516
    :catchall_5d
    move-exception p1

    goto :goto_ab

    .line 502
    :cond_5f
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_77

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring save dialog for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_77
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 504
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 505
    goto :goto_9e

    .line 507
    :cond_7e
    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 508
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_9a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling pending save dialog for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_9d
    .catchall {:try_start_44 .. :try_end_9d} :catchall_5d

    .line 510
    nop

    .line 516
    :goto_9e
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 517
    nop

    .line 518
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 519
    return-void

    .line 516
    :goto_ab
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    const-string v0, "NO TITLE"

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

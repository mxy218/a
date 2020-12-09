.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID_DARK:I = 0x10303dc

.field private static final THEME_ID_LIGHT:I = 0x10303e5

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mThemeId:I

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V
    .registers 31

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v0, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 95
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 135
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v6, "FillUi"

    if-eqz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightMode: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_35
    if-eqz v0, :cond_3b

    const v0, 0x10303dc

    goto :goto_3e

    :cond_3b
    const v0, 0x10303e5

    :goto_3e
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 137
    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 139
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v8, p1

    invoke-direct {v0, v8, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 141
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v8

    .line 146
    iget-boolean v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v9, :cond_72

    .line 147
    const v9, 0x109003d

    invoke-virtual {v0, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    goto :goto_8c

    .line 148
    :cond_72
    if-nez v7, :cond_82

    if-eqz v8, :cond_77

    goto :goto_82

    .line 152
    :cond_77
    const v9, 0x109003c

    invoke-virtual {v0, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    goto :goto_8c

    .line 149
    :cond_82
    :goto_82
    const v9, 0x109003e

    invoke-virtual {v0, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    .line 154
    :goto_8c
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 155
    const v0, 0x10201cb

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    const/4 v11, 0x0

    if-eqz v0, :cond_ac

    .line 157
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const v13, 0x10400ec

    new-array v14, v10, [Ljava/lang/Object;

    aput-object p6, v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_ac
    const v0, 0x10201c8

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    if-eqz v0, :cond_bc

    .line 161
    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_bc
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_f8

    .line 166
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 167
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 169
    const/4 v12, -0x1

    iput v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 170
    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 171
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_f8

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initialized fillscreen LayoutParams "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_f8
    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 195
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_128

    .line 196
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 197
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_137

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "overriding maximum visible datasets to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    .line 201
    :cond_128
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x10e0004

    .line 202
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 205
    :cond_137
    :goto_137
    new-instance v12, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;

    invoke-direct {v12, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    const-string v13, "Error inflating remote views"

    if-eqz v0, :cond_1c5

    .line 213
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 214
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 215
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 216
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 219
    const v0, 0x10201ca

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    :try_start_155
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {v2, v7, v9, v12, v8}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_164
    .catch Ljava/lang/RuntimeException; {:try_start_155 .. :try_end_164} :catch_1bb

    .line 230
    nop

    .line 231
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 232
    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;

    move-object/from16 v14, p2

    invoke-direct {v4, v1, v14}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-nez v0, :cond_1af

    .line 235
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 236
    iget-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    const/4 v6, -0x2

    if-eqz v5, :cond_189

    iget v5, v0, Landroid/graphics/Point;->x:I

    goto :goto_18a

    .line 239
    :cond_189
    move v5, v6

    :goto_18a
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget v4, v0, Landroid/graphics/Point;->x:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 243
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 246
    invoke-virtual {v9, v4, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 247
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 251
    :cond_1af
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v9, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 253
    goto/16 :goto_37c

    .line 225
    :catch_1bb
    move-exception v0

    .line 226
    invoke-interface/range {p9 .. p9}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 227
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 229
    return-void

    .line 254
    :cond_1c5
    move-object/from16 v14, p2

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 255
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1f1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number datasets: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " max visible: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1f1
    nop

    .line 261
    if-eqz v7, :cond_21d

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 263
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v10, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {v7, v15, v5, v0, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 264
    const v7, 0x10201c7

    .line 265
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 266
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_214

    const-string v10, "adding header"

    invoke-static {v6, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_214
    iget-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    goto :goto_220

    .line 270
    :cond_21d
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    move-object v0, v5

    .line 273
    :goto_220
    if-eqz v8, :cond_252

    .line 274
    const v7, 0x10201c6

    .line 275
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 276
    if-eqz v7, :cond_24f

    .line 277
    if-nez v0, :cond_233

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 280
    :cond_233
    iget-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {v8, v10, v5, v0, v15}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 283
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_246

    const-string v0, "adding footer"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_246
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_251

    .line 287
    :cond_24f
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 289
    :goto_251
    goto :goto_254

    .line 290
    :cond_252
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 293
    :goto_254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    move v8, v11

    :goto_25a
    if-ge v8, v4, :cond_33d

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    .line 296
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 297
    if-ltz v10, :cond_333

    .line 298
    invoke-virtual {v0, v10}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 299
    if-nez v15, :cond_297

    .line 300
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "not displaying UI on field "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move/from16 p6, v4

    goto/16 :goto_335

    .line 306
    :cond_297
    :try_start_297
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v16, :cond_2b0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting remote view for "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2b0
    iget-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v11, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_2b4
    .catch Ljava/lang/RuntimeException; {:try_start_297 .. :try_end_2b4} :catch_32c

    move/from16 p6, v4

    const/4 v4, 0x0

    :try_start_2b7
    invoke-virtual {v15, v5, v4, v12, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v20
    :try_end_2bb
    .catch Ljava/lang/RuntimeException; {:try_start_2b7 .. :try_end_2bb} :catch_32a

    .line 312
    nop

    .line 313
    invoke-virtual {v0, v10}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v4

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    if-nez v4, :cond_2ed

    .line 318
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 319
    if-eqz v4, :cond_2e5

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v5

    if-eqz v5, :cond_2e5

    .line 320
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_2e6

    .line 322
    :cond_2e5
    const/4 v5, 0x0

    :goto_2e6
    move-object/from16 v19, v5

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_31e

    .line 323
    :cond_2ed
    iget-object v5, v4, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 324
    if-nez v5, :cond_318

    .line 325
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_311

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Explicitly disabling filter at id "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for dataset #"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_311
    move-object/from16 v17, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_31e

    .line 324
    :cond_318
    move-object/from16 v17, v5

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 333
    :goto_31e
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object v15, v4

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v20}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_335

    .line 309
    :catch_32a
    move-exception v0

    goto :goto_32f

    :catch_32c
    move-exception v0

    move/from16 p6, v4

    .line 310
    :goto_32f
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    goto :goto_335

    .line 297
    :cond_333
    move/from16 p6, v4

    .line 294
    :goto_335
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, p6

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_25a

    .line 337
    :cond_33d
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 339
    const v0, 0x10201c9

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 340
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iget-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 342
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$TUHYXtyYjvn8kBKxh1vyXjC9x84;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$TUHYXtyYjvn8kBKxh1vyXjC9x84;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    if-nez p4, :cond_36c

    .line 348
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_372

    .line 350
    :cond_36c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 353
    :goto_372
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 354
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v9, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 356
    :goto_37c
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 766
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 767
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 769
    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    .line 771
    :cond_1d
    return-void
.end method

.method private applyNewFilterText()V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FzsKmFVepz197dqO8-bth9Hmkl4;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FzsKmFVepz197dqO8-bth9Hmkl4;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 399
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .registers 2

    .line 124
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    .line 125
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forcing full-screen mode to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FillUi"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_20
    sget-object p0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 128
    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$newClickBlocker$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 3

    .line 367
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring click on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FillUi"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;
    .registers 2

    .line 366
    sget-object v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;->INSTANCE:Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 526
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1120013

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 529
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1120012

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 532
    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 533
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 519
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 522
    return-void

    .line 520
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .registers 9

    .line 441
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 442
    return v1

    .line 444
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    .line 446
    return v3

    .line 448
    :cond_c
    nop

    .line 449
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_24

    .line 450
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_1b

    .line 451
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 452
    move v0, v3

    goto :goto_1c

    .line 450
    :cond_1b
    move v0, v1

    .line 454
    :goto_1c
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_23

    .line 455
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 456
    move v0, v3

    .line 458
    :cond_23
    return v0

    .line 461
    :cond_24
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 462
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 464
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 465
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 467
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 469
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 471
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 473
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_59

    .line 474
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 475
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v5, v1

    .line 476
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_5a

    .line 473
    :cond_59
    move v5, v1

    .line 479
    :goto_5a
    nop

    :goto_5b
    if-ge v1, v4, :cond_79

    .line 480
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 481
    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    .line 482
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 483
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v1, v7, :cond_76

    .line 484
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 479
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 488
    :cond_79
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v1, :cond_8f

    .line 489
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 490
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 491
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v0

    or-int v5, v1, v0

    .line 493
    :cond_8f
    return v5
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 3

    .line 508
    nop

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 510
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr p1, p2

    .line 511
    if-eq p1, p2, :cond_14

    .line 512
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 513
    const/4 p1, 0x1

    goto :goto_15

    .line 511
    :cond_14
    const/4 p1, 0x0

    .line 515
    :goto_15
    return p1
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 3

    .line 497
    nop

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 499
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 500
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq p1, p2, :cond_19

    .line 501
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 502
    const/4 p1, 0x1

    goto :goto_1a

    .line 500
    :cond_19
    const/4 p1, 0x0

    .line 504
    :goto_1a
    return p1
.end method


# virtual methods
.method public destroy(Z)V
    .registers 4

    .line 429
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 430
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_b

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 434
    if-eqz p1, :cond_17

    .line 435
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 437
    :cond_17
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 438
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 710
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 715
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 717
    :cond_3f
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_50

    .line 718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 720
    :cond_50
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_61

    .line 721
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 723
    :cond_61
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_72

    .line 724
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 726
    :cond_72
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_83

    .line 727
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 730
    :cond_83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 731
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 733
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 734
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const v3, 0x10303dc

    if-eq v0, v3, :cond_d0

    const v3, 0x10303e5

    if-eq v0, v3, :cond_ca

    .line 742
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d6

    .line 739
    :cond_ca
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    goto :goto_d6

    .line 736
    :cond_d0
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    nop

    .line 745
    :goto_d6
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_165

    .line 746
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 748
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 749
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "view: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 752
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "params: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 754
    :cond_134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "screen coordinates: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_14b

    .line 756
    const-string p2, "N/A"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_165

    .line 758
    :cond_14b
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p2

    .line 759
    aget v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 762
    :cond_165
    :goto_165
    return-void
.end method

.method public synthetic lambda$applyNewFilterText$5$FillUi(II)V
    .registers 5

    .line 375
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 376
    return-void

    .line 378
    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_36

    .line 379
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_30

    .line 380
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 381
    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No dataset matches filter with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chars"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FillUi"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_30
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_67

    .line 385
    :cond_36
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 386
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 388
    :cond_3f
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p2

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le p2, v1, :cond_55

    .line 389
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 390
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_5a

    .line 392
    :cond_55
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 394
    :goto_5a
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p2

    if-eq p2, p1, :cond_67

    .line 395
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 398
    :cond_67
    :goto_67
    return-void
.end method

.method public synthetic lambda$new$0$FillUi(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 179
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/16 v0, 0x42

    if-eq p1, v0, :cond_19

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_1c

    .line 190
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 191
    const/4 p1, 0x1

    return p1

    .line 188
    :cond_19
    :pswitch_19  #0x13, 0x14, 0x15, 0x16, 0x17
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x13
        :pswitch_19  #00000013
        :pswitch_19  #00000014
        :pswitch_19  #00000015
        :pswitch_19  #00000016
        :pswitch_19  #00000017
    .end packed-switch
.end method

.method public synthetic lambda$new$1$FillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    .line 206
    if-eqz p2, :cond_b

    .line 207
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 209
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$new$2$FillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    .line 232
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p2, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public synthetic lambda$new$3$FillUi(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 343
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {p2, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 345
    return-void
.end method

.method requestShowFillUi()V
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 360
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 3

    .line 402
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 403
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_17

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 407
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_16

    .line 409
    :cond_11
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 411
    :goto_16
    return-void

    .line 414
    :cond_17
    if-nez p1, :cond_1b

    .line 415
    const/4 p1, 0x0

    goto :goto_1f

    .line 417
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 420
    :goto_1f
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 421
    return-void

    .line 423
    :cond_28
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 426
    return-void
.end method

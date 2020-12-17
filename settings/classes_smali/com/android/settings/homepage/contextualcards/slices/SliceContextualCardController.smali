.class public Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;
.super Ljava/lang/Object;
.source "SliceContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;


# instance fields
.field private mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSimpleCardName(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 110
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method isFeedbackEnabled(Ljava/lang/String;)Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public synthetic lambda$onDismissed$0$SliceContextualCardController(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->markContextualCardAsDismissed(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .registers 2

    return-void
.end method

.method public onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .registers 4

    .line 70
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->showFeedbackDialog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardDismissLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x681

    .line 79
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .registers 2

    return-void
.end method

.method public setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method

.method showFeedbackDialog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    const v1, 0x7f120539

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->isFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 95
    :cond_10
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/homepage/contextualcards/ContextualCardFeedbackDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->getSimpleCardName(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "card_name"

    .line 96
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "feedback_email"

    .line 98
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 99
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

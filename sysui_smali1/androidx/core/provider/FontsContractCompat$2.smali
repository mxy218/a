.class final Landroidx/core/provider/FontsContractCompat$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZIIZ)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .registers 2

    .line 410
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .registers 3

    if-nez p1, :cond_9

    .line 414
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    goto :goto_1a

    .line 416
    :cond_9
    iget v0, p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v0, :cond_15

    .line 417
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object p1, p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    goto :goto_1a

    .line 419
    :cond_15
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p0, v0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    :goto_1a
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 410
    check-cast p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontsContractCompat$2;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method

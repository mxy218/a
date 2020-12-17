.class public final Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
.super Ljava/lang/Object;
.source "PinnedHeaderIndexerArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->position:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->position:I

    return-void
.end method

.class public final Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
.super Ljava/lang/Object;
.source "PinnedHeaderIndexerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field public lastInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method static synthetic access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return p1
.end method

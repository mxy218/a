.class public Lcom/android/systemui/qs/QSPanel$Record;
.super Ljava/lang/Object;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Record"
.end annotation


# instance fields
.field public col:I

.field detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public row:I

.field x:I

.field y:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

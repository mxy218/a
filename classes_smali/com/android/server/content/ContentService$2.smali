.class Lcom/android/server/content/ContentService$2;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/ContentService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;

.field final synthetic val$pidCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V
    .registers 3

    .line 229
    iput-object p1, p0, Lcom/android/server/content/ContentService$2;->this$0:Lcom/android/server/content/ContentService;

    iput-object p2, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 233
    iget-object v0, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 234
    if-ge p1, p2, :cond_18

    .line 235
    const/4 p1, 0x1

    return p1

    .line 236
    :cond_18
    if-le p1, p2, :cond_1c

    .line 237
    const/4 p1, -0x1

    return p1

    .line 239
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 229
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.class public Lcom/android/server/uri/NeededUriGrants;
.super Ljava/util/ArrayList;
.source "NeededUriGrants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/uri/GrantUri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 34
    iput p3, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 35
    return-void
.end method


# virtual methods
.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 39
    iget-object v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/uri/NeededUriGrants;->size()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_3a

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/uri/NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 47
    :cond_3a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 48
    return-void
.end method

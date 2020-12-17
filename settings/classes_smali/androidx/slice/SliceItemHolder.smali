.class public Landroidx/slice/SliceItemHolder;
.super Ljava/lang/Object;
.source "SliceItemHolder.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItemHolder$SliceItemPool;,
        Landroidx/slice/SliceItemHolder$HolderHandler;
    }
.end annotation


# static fields
.field public static sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

.field public static final sSerializeLock:Ljava/lang/Object;


# instance fields
.field mCallback:Ljava/lang/Object;

.field mInt:I

.field mLong:J

.field mParcelable:Landroid/os/Parcelable;

.field private mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

.field mStr:Ljava/lang/String;

.field public mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroidx/slice/SliceItemHolder$SliceItemPool;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 57
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 61
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 72
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 57
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 61
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    goto :goto_61

    :sswitch_19
    const-string/jumbo v1, "slice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x2

    goto :goto_62

    :sswitch_24
    const-string v1, "input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x3

    goto :goto_62

    :sswitch_2e
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    goto :goto_62

    :sswitch_38
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x4

    goto :goto_62

    :sswitch_43
    const-string v1, "long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x6

    goto :goto_62

    :sswitch_4d
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x5

    goto :goto_62

    :sswitch_57
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v1, v0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v1, -0x1

    :goto_62
    packed-switch v1, :pswitch_data_d6

    goto :goto_b0

    .line 109
    :pswitch_66  #0x6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    goto :goto_b0

    .line 106
    :pswitch_6f  #0x5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    goto :goto_b0

    .line 102
    :pswitch_78  #0x4
    instance-of p3, p2, Landroid/text/Spanned;

    if-eqz p3, :cond_83

    check-cast p2, Landroid/text/Spanned;

    invoke-static {p2, v0}, Landroidx/core/text/HtmlCompat;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_85

    :cond_83
    check-cast p2, Ljava/lang/String;

    :goto_85
    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    goto :goto_b0

    .line 99
    :pswitch_88  #0x3
    check-cast p2, Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_b0

    .line 96
    :pswitch_8d  #0x1, 0x2
    check-cast p2, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_b0

    .line 87
    :pswitch_92  #0x0
    check-cast p2, Landroidx/core/util/Pair;

    iget-object v0, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_9f

    .line 88
    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_a1

    :cond_9f
    if-eqz p3, :cond_a8

    .line 92
    :goto_a1
    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_b0

    .line 90
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot write callback to parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :goto_b0
    sget-object p2, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz p2, :cond_b7

    .line 113
    invoke-interface {p2, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    :cond_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        -0x54d081ca -> :sswitch_57
        0x197ef -> :sswitch_4d
        0x32c67c -> :sswitch_43
        0x36452d -> :sswitch_38
        0x5faa95b -> :sswitch_2e
        0x5fb57ca -> :sswitch_24
        0x6873d92 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_92  #00000000
        :pswitch_8d  #00000001
        :pswitch_8d  #00000002
        :pswitch_88  #00000003
        :pswitch_78  #00000004
        :pswitch_6f  #00000005
        :pswitch_66  #00000006
    .end packed-switch
.end method


# virtual methods
.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 121
    sget-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz v0, :cond_7

    .line 122
    invoke-interface {v0, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    :cond_7
    const/4 v0, -0x1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_b6

    goto :goto_58

    :sswitch_11
    const-string/jumbo v1, "slice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x2

    goto :goto_58

    :sswitch_1c
    const-string v1, "input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x3

    goto :goto_58

    :sswitch_26
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x1

    goto :goto_58

    :sswitch_30
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x4

    goto :goto_58

    :sswitch_3b
    const-string v1, "long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x6

    goto :goto_58

    :sswitch_45
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x5

    goto :goto_58

    :sswitch_4f
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    move v0, v2

    :cond_58
    :goto_58
    packed-switch v0, :pswitch_data_d4

    .line 144
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :pswitch_72  #0x6
    iget-wide p0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_79  #0x5
    iget p0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_80  #0x4
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    if-eqz p1, :cond_92

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_92

    .line 138
    :cond_8b
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    invoke-static {p0, v2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :cond_92
    :goto_92
    const-string p0, ""

    return-object p0

    .line 133
    :pswitch_95  #0x3
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    return-object p0

    .line 131
    :pswitch_98  #0x1, 0x2
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    return-object p0

    .line 126
    :pswitch_9b  #0x0
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-nez p1, :cond_a5

    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    if-nez p1, :cond_a5

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_a5
    new-instance p1, Landroidx/core/util/Pair;

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_ac

    goto :goto_ae

    :cond_ac
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    :goto_ae
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast p0, Landroidx/slice/Slice;

    invoke-direct {p1, v0, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :sswitch_data_b6
    .sparse-switch
        -0x54d081ca -> :sswitch_4f
        0x197ef -> :sswitch_45
        0x32c67c -> :sswitch_3b
        0x36452d -> :sswitch_30
        0x5faa95b -> :sswitch_26
        0x5fb57ca -> :sswitch_1c
        0x6873d92 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_9b  #00000000
        :pswitch_98  #00000001
        :pswitch_98  #00000002
        :pswitch_95  #00000003
        :pswitch_80  #00000004
        :pswitch_79  #00000005
        :pswitch_72  #00000006
    .end packed-switch
.end method

.method public release()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {v0, p0}, Landroidx/slice/SliceItemHolder$SliceItemPool;->release(Landroidx/slice/SliceItemHolder;)V

    :cond_7
    return-void
.end method

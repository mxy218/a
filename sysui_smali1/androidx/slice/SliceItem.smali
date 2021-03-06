.class public final Landroidx/slice/SliceItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SliceItem.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItem$ActionHandler;,
        Landroidx/slice/SliceItem$SliceType;
    }
.end annotation


# instance fields
.field mFormat:Ljava/lang/String;

.field protected mHints:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mHolder:Landroidx/slice/SliceItemHolder;

.field mObj:Ljava/lang/Object;

.field mSanitizedText:Ljava/lang/CharSequence;

.field mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string/jumbo v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 160
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string/jumbo v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string v0, "hints"

    .line 351
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v0, "format"

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v0, "subtype"

    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string/jumbo v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 132
    iput-object p2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    return-void
.end method

.method private static checkSpan(Ljava/lang/Object;)Z
    .registers 2

    .line 682
    instance-of v0, p0, Landroid/text/style/AlignmentSpan;

    if-nez v0, :cond_13

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_13

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_13

    instance-of p0, p0, Landroid/text/style/StyleSpan;

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static checkSpannedText(Landroid/text/Spanned;)Z
    .registers 5

    .line 656
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1b

    aget-object v3, p0, v1

    .line 657
    invoke-static {v3}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method private static fixSpan(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 689
    invoke-static {p0}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private static fixSpannableText(Landroid/text/Spannable;)V
    .registers 9

    .line 663
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    :goto_c
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 664
    invoke-static {v3}, Landroidx/slice/SliceItem;->fixSpan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_17

    goto :goto_2b

    :cond_17
    if-eqz v4, :cond_28

    .line 668
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 669
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 670
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 671
    invoke-interface {p0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 674
    :cond_28
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2e
    return-void
.end method

.method private static layoutDirectionToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 590
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "LOCALE"

    return-object p0

    :cond_13
    const-string p0, "INHERIT"

    return-object p0

    :cond_16
    const-string p0, "RTL"

    return-object p0

    :cond_19
    const-string p0, "LTR"

    return-object p0
.end method

.method private static readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b2

    goto :goto_50

    :sswitch_8
    const-string/jumbo v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    goto :goto_51

    :sswitch_13
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :sswitch_1d
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x0

    goto :goto_51

    :sswitch_27
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x3

    goto :goto_51

    :sswitch_32
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x6

    goto :goto_51

    :sswitch_3c
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x5

    goto :goto_51

    :sswitch_46
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v0, -0x1

    :goto_51
    const-string v1, "obj"

    packed-switch v0, :pswitch_data_d0

    .line 445
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :pswitch_6d  #0x6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 441
    :pswitch_76  #0x5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 437
    :pswitch_7f  #0x4
    new-instance p0, Landroidx/core/util/Pair;

    .line 438
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice;

    const-string v2, "obj_2"

    .line 439
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 435
    :pswitch_94  #0x3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 433
    :pswitch_99  #0x2
    new-instance p0, Landroidx/slice/Slice;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object p0

    .line 431
    :pswitch_a3  #0x1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    .line 429
    :pswitch_a8  #0x0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x54d081ca -> :sswitch_46
        0x197ef -> :sswitch_3c
        0x32c67c -> :sswitch_32
        0x36452d -> :sswitch_27
        0x5faa95b -> :sswitch_1d
        0x5fb57ca -> :sswitch_13
        0x6873d92 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a8  #00000000
        :pswitch_a3  #00000001
        :pswitch_99  #00000002
        :pswitch_94  #00000003
        :pswitch_7f  #00000004
        :pswitch_76  #00000005
        :pswitch_6d  #00000006
    .end packed-switch
.end method

.method private static sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 642
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_b

    .line 643
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    return-object p0

    .line 645
    :cond_b
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_22

    .line 646
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroidx/slice/SliceItem;->checkSpannedText(Landroid/text/Spanned;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    .line 647
    :cond_19
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 648
    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    return-object v0

    :cond_22
    return-object p0
.end method

.method public static typeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7c

    goto :goto_50

    :sswitch_8
    const-string/jumbo v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x0

    goto :goto_51

    :sswitch_13
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x6

    goto :goto_51

    :sswitch_1d
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    goto :goto_51

    :sswitch_27
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :sswitch_32
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x5

    goto :goto_51

    :sswitch_3c
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    goto :goto_51

    :sswitch_46
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x3

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v0, -0x1

    :goto_51
    packed-switch v0, :pswitch_data_9a

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_66  #0x6
    const-string p0, "RemoteInput"

    return-object p0

    :pswitch_69  #0x5
    const-string p0, "Long"

    return-object p0

    :pswitch_6c  #0x4
    const-string p0, "Int"

    return-object p0

    :pswitch_6f  #0x3
    const-string p0, "Action"

    return-object p0

    :pswitch_72  #0x2
    const-string p0, "Image"

    return-object p0

    :pswitch_75  #0x1
    const-string p0, "Text"

    return-object p0

    :pswitch_78  #0x0
    const-string p0, "Slice"

    return-object p0

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x54d081ca -> :sswitch_46
        0x197ef -> :sswitch_3c
        0x32c67c -> :sswitch_32
        0x36452d -> :sswitch_27
        0x5faa95b -> :sswitch_1d
        0x5fb57ca -> :sswitch_13
        0x6873d92 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_78  #00000000
        :pswitch_75  #00000001
        :pswitch_72  #00000002
        :pswitch_6f  #00000003
        :pswitch_6c  #00000004
        :pswitch_69  #00000005
        :pswitch_66  #00000006
    .end packed-switch
.end method

.method private writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 400
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a6

    goto :goto_50

    :sswitch_8
    const-string/jumbo v0, "slice"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x2

    goto :goto_51

    :sswitch_13
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x1

    goto :goto_51

    :sswitch_1d
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x0

    goto :goto_51

    :sswitch_27
    const-string/jumbo v0, "text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x4

    goto :goto_51

    :sswitch_32
    const-string v0, "long"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x6

    goto :goto_51

    :sswitch_3c
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x5

    goto :goto_51

    :sswitch_46
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    const/4 p3, 0x3

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p3, -0x1

    :goto_51
    const-string v0, "obj"

    packed-switch p3, :pswitch_data_c4

    goto :goto_a5

    .line 421
    :pswitch_57  #0x6
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_a5

    .line 418
    :pswitch_63  #0x5
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a5

    .line 415
    :pswitch_6f  #0x4
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_a5

    .line 411
    :pswitch_75  #0x3
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p0, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    iget-object p0, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    invoke-virtual {p0}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "obj_2"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a5

    .line 408
    :pswitch_8c  #0x2
    check-cast p2, Landroidx/slice/Slice;

    invoke-virtual {p2}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a5

    .line 405
    :pswitch_96  #0x1
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a5

    .line 402
    :pswitch_9c  #0x0
    check-cast p2, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p2}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_a5
    return-void

    :sswitch_data_a6
    .sparse-switch
        -0x54d081ca -> :sswitch_46
        0x197ef -> :sswitch_3c
        0x32c67c -> :sswitch_32
        0x36452d -> :sswitch_27
        0x5faa95b -> :sswitch_1d
        0x5fb57ca -> :sswitch_13
        0x6873d92 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_9c  #00000000
        :pswitch_96  #00000001
        :pswitch_8c  #00000002
        :pswitch_75  #00000003
        :pswitch_6f  #00000004
        :pswitch_63  #00000005
        :pswitch_57  #00000006
    .end packed-switch
.end method


# virtual methods
.method public addHint(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 194
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    return-void
.end method

.method public fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 11
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 292
    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_17

    .line 293
    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 p0, 0x0

    return p0

    .line 296
    :cond_17
    check-cast v0, Landroidx/slice/SliceItem$ActionHandler;

    invoke-interface {v0, p0, p1, p2}, Landroidx/slice/SliceItem$ActionHandler;->onAction(Landroidx/slice/SliceItem;Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 268
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 269
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_d

    .line 270
    check-cast p0, Landroid/app/PendingIntent;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 211
    iget-object p0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getHints()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .registers 1

    .line 260
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getInt()I
    .registers 1

    .line 316
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong()J
    .registers 3

    .line 335
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .registers 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 309
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroid/app/RemoteInput;

    return-object p0
.end method

.method public getSanitizedText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceItem;->sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    .line 242
    :cond_e
    iget-object p0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .registers 3

    .line 324
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 325
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0

    .line 327
    :cond_15
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 1

    .line 231
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public varargs hasAnyHints([Ljava/lang/String;)Z
    .registers 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 391
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 392
    iget-object v4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .registers 2

    .line 343
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPostParceling()V
    .registers 4

    .line 561
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 562
    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/slice/SliceItemHolder;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    invoke-virtual {v0}, Landroidx/slice/SliceItemHolder;->release()V

    goto :goto_15

    .line 565
    :cond_13
    iput-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 567
    :goto_15
    iput-object v1, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 5

    .line 556
    new-instance v0, Landroidx/slice/SliceItemHolder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v2, "hints"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/SliceItem;->writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 477
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    const/16 v1, 0x3c

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    const/16 v1, 0x20

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    iget-object v2, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    array-length v3, v2

    if-lez v3, :cond_36

    .line 496
    invoke-static {v0, v2}, Landroidx/slice/Slice;->appendHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_1c4

    goto :goto_97

    :sswitch_5a
    const-string/jumbo v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v5

    goto :goto_97

    :sswitch_65
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v8

    goto :goto_97

    :sswitch_6f
    const-string/jumbo v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v9

    goto :goto_97

    :sswitch_7a
    const-string v4, "long"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v6

    goto :goto_97

    :sswitch_84
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v7

    goto :goto_97

    :sswitch_8e
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    move v3, v10

    :cond_97
    :goto_97
    const/16 v2, 0x7d

    const/16 v4, 0xa

    const-string/jumbo v11, "{\n"

    if-eqz v3, :cond_1a3

    if-eq v3, v10, :cond_178

    if-eq v3, v9, :cond_168

    if-eq v3, v8, :cond_160

    if-eq v3, v7, :cond_fb

    if-eq v3, v6, :cond_b7

    .line 547
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/slice/SliceItem;->typeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ba

    .line 533
    :cond_b7
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "millis"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ed

    .line 534
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_d4

    const-string p0, "INFINITY"

    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ba

    .line 537
    :cond_d4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    .line 538
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x40000

    .line 537
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ba

    .line 543
    :cond_ed
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x4c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1ba

    .line 521
    :cond_fb
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_140

    .line 522
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    new-array p1, v7, [Ljava/lang/Object;

    .line 524
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v10

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v9

    .line 525
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v8

    const-string p0, "a=0x%02x r=0x%02x g=0x%02x b=0x%02x"

    .line 523
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ba

    .line 526
    :cond_140
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "layout_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 527
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/slice/SliceItem;->layoutDirectionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ba

    .line 529
    :cond_158
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1ba

    .line 518
    :cond_160
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1ba

    :cond_168
    const/16 p1, 0x22

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1ba

    .line 508
    :cond_178
    iget-object v3, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const/16 v5, 0x5b

    .line 509
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1ba

    .line 502
    :cond_1a3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1ba
    const-string p0, "\n"

    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_1c4
    .sparse-switch
        -0x54d081ca -> :sswitch_8e
        0x197ef -> :sswitch_84
        0x32c67c -> :sswitch_7a
        0x36452d -> :sswitch_6f
        0x5faa95b -> :sswitch_65
        0x6873d92 -> :sswitch_5a
    .end sparse-switch
.end method

.class public Lcom/alibaba/fastjson/serializer/PascalNameFilter;
.super Ljava/lang/Object;
.source "PascalNameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_1c

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1c

    .line 10
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    aget-char p2, p0, p1

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    aput-char p2, p0, p1

    .line 13
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1c
    :goto_1c
    return-object p2
.end method

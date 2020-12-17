.class public interface abstract Landroidx/slice/builders/impl/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
.end method

.method public abstract setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
.end method

.method public abstract setTtl(J)V
.end method
